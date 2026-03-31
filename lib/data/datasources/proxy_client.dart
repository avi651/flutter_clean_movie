import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/data/datasources/proxy_cubit.dart';

class ProxyClient extends BaseClient {
  late final HttpClient _client;
  final String logTag;
  ProxyClient({HttpClient? client, this.logTag = "ProxyClient"}) {
    _client = client ?? HttpClient();
    _client.findProxy = (uri) {
      final isProxy = Modular.get<ProxyCubit>().state.isProxyWorking;
      if (isProxy) {
        // Forward all request to proxy "localhost:8080"
        // Be aware, the proxy should went through you running device,
        // not the host platform,
        return Env.proxyConfig;
      }

      return "DIRECT";
    };
  }

  @override
  void close() {
    _client.close();
  }

  @override
  Future<Response> head(Uri url, {Map<String, String>? headers}) {
    return _sendUnstreamed("HEAD", url, headers);
  }

  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) {
    return _sendUnstreamed("GET", url, headers);
  }

  @override
  Future<Response> post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return _sendUnstreamed("POST", url, headers, body, encoding);
  }

  @override
  Future<Response> put(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return _sendUnstreamed("PUT", url, headers, body, encoding);
  }

  @override
  Future<Response> delete(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return _sendUnstreamed("DELETE", url, headers, body, encoding);
  }

  @override
  Future<Response> patch(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return _sendUnstreamed("PATCH", url, headers, body, encoding);
  }

  @override
  Future<String> read(Uri url, {Map<String, String>? headers}) async {
    final response = await get(url, headers: headers);

    _checkResponseSuccess(url, response);
    return response.body;
  }

  @override
  Future<Uint8List> readBytes(Uri url, {Map<String, String>? headers}) async {
    final response = await get(url, headers: headers);

    _checkResponseSuccess(url, response);
    return response.bodyBytes;
  }

  /// Sends a non-streaming request and returns a non-streaming response.
  Future<Response> _sendUnstreamed(
    String method,
    Uri url,
    Map<String, String>? headers, [
    Object? body,
    Encoding? encoding,
  ]) async {
    final request = Request(method, url);
    if (headers != null) {
      request.headers.addAll(headers);
    }
    if (body != null) {
      if (body is String) {
        request.body = body;
      } else if (body is List<int>) {
        request.bodyBytes = body;
      } else if (body is Map<String, String>) {
        request.bodyFields = body;
      } else {
        throw ArgumentError('Invalid request body "$body".');
      }
    }
    return Response.fromStream(await send(request));
  }

  /// Throws and error if [response] is not successful
  void _checkResponseSuccess(Uri url, Response response) {
    if (response.statusCode < 400) return;
    var message = 'Request to $url failed with status ${response.statusCode}';
    if (response.body.isNotEmpty) {
      message = '$message: ${response.reasonPhrase}';
    }
    throw ClientException('$message.', url);
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    // Convert the BaseRequest to an HttpClientRequest
    final HttpClientRequest httpClientRequest = await _client.openUrl(
      request.method,
      request.url,
    );

    // Add headers to the HttpClientRequest
    request.headers.forEach((k, v) => httpClientRequest.headers.add(k, v));

    // Add body to the HttpClientRequest
    if (request is Request) {
      final List<int> bodyBytes = request.bodyBytes;
      httpClientRequest.contentLength = bodyBytes.length;
      httpClientRequest.add(bodyBytes);
    } else {
      throw ArgumentError('Unsupported request type: $request');
    }

    // Send the HttpClientRequest and get the HttpClientResponse

    final HttpClientResponse httpClientResponse = await httpClientRequest
        .close();

    // Convert the HttpClientResponse to a StreamedResponse
    final StreamedResponse streamedResponse = StreamedResponse(
      httpClientResponse.map((e) => Uint8List.fromList(e)),
      httpClientResponse.statusCode,
      contentLength: httpClientResponse.contentLength,
      request: request,
      headers: getHeaderMap(httpClientResponse.headers),
      isRedirect: httpClientResponse.isRedirect,
      persistentConnection: httpClientResponse.persistentConnection,
      reasonPhrase: httpClientResponse.reasonPhrase,
    );

    if (streamedResponse.statusCode < 200 ||
        streamedResponse.statusCode >= 300) {
      final message =
          'Request to ${request.url} failed with status ${streamedResponse.statusCode}';
      throw ClientException('$message.', request.url);
    }
    return streamedResponse;
  }

  Map<String, String> getHeaderMap(HttpHeaders httpHeaders) {
    final Map<String, String> headers = {};
    httpHeaders.forEach((key, values) {
      headers[key] = values.join(', ');
    });
    return headers;
  }
}
