import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_event.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, int> {
  BottomNavBloc() : super(0);

  @override
  Stream<int> mapEventToState(
    BottomNavEvent event,
  ) async* {
    if (event is NavigateToAnotherTab) {
      if (state != event.index) {
        yield event.index;
      }
    }
  }
}
