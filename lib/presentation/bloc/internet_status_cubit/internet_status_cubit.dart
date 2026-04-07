import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:movie_clean/presentation/bloc/internet_status_cubit/internet_status_state.dart';

class InternetStatusCubit extends Cubit<InternetStatus> {
  Timer? timer;

  InternetStatusCubit() : super(InternetStatus.ok) {
    checkConnectivityPeriodically();
  }

  Future<void> checkConnectivityPeriodically() async {
    timer?.cancel();

    final hasInternet = await _connectivityChecker();
    if (hasInternet) {
      emit(InternetStatus.ok);
    } else {
      emit(InternetStatus.noInternet);
    }

    timer = Timer(const Duration(seconds: 5), checkConnectivityPeriodically);
  }

  Future<bool> _connectivityChecker() async {
    try {
      final result = await InternetAddress.lookup("www.google.com");
      if (result.isNotEmpty && result.first.rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }
}
