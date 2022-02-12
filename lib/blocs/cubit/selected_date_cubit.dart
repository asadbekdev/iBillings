import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedDateCubit extends Cubit<int> {
  SelectedDateCubit() : super(0);

  void selectDate(index) => emit(index);
}
