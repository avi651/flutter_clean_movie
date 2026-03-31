part of 'proxy_cubit.dart';

@freezed
abstract class ProxyData with _$ProxyData {
  const ProxyData._();

  const factory ProxyData({@Default(true) bool isProxyWorking}) = _ProxyData;

  factory ProxyData.fromJson(Map<String, dynamic> json) =>
      _$ProxyDataFromJson(json);
}
