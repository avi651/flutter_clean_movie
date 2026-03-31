import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'proxy_cubit.g.dart';
part 'proxy_cubit.freezed.dart';
part 'proxy_data.part.dart';

class ProxyCubit extends Cubit<ProxyData> {
  ProxyCubit()
    : super(
        const ProxyData(isProxyWorking: true),
      ); // true ke jagah !Emv.skipAuth karna hai

  void setStatus({required bool isProxyWorking}) {
    final data = ProxyData(isProxyWorking: isProxyWorking);
    if (data != state) {
      emit(data);
    }
  }
}
