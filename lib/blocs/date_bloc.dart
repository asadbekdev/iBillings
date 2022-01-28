import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';

abstract class DateEvent {}

class DatePrevPressed extends DateEvent {}

class DateNextPressed extends DateEvent {}

int currentMonth = Jiffy().month;
int currentYear = Jiffy().year;
int currentDate = Jiffy().date;
Jiffy jiffy = Jiffy([currentYear, currentMonth, currentDate]);

class DateBloc extends Bloc<DateEvent, Jiffy> {
  DateBloc() : super(jiffy) {
    on<DatePrevPressed>((event, emit) {
      currentMonth--;
      jiffy = Jiffy([currentYear, currentMonth, currentDate]);
      emit(jiffy);
    });
    on<DateNextPressed>((event, emit) {
      currentMonth++;
      jiffy = Jiffy([currentYear, currentMonth, currentDate]);
      emit(jiffy);
    });
  }
}
