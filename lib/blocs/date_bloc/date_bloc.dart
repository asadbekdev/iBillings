import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
part 'date_event.dart';

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
