import 'package:flutter_bloc/flutter_bloc.dart';

class MovieBottomNavCubit extends Cubit<int> {
  MovieBottomNavCubit() : super(0);

  void changeTab(int index) {
    if (index == state) return;
    emit(index);
  }
}
