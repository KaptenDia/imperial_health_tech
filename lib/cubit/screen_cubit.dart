import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class ScreenCubit extends Cubit<int> {
  ScreenCubit() : super(0);

  void setScreen(int newScreen) {
    emit(newScreen);
  }
}
