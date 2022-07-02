import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:himasta_mobile/models/models.dart';

part 'page_state.dart';
part 'page_event.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc({PageState initialState}) : super(initialState);

  // @override
  // PageState get initialState => OnInitialPage();

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToMainPage) {
      yield OnMainPage();
    } else if (event is GoToInfoPage) {
      yield OnInfoPage();
    } else if (event is GoToKontakPage) {
      yield OnKontakPage();
    } else if (event is GoToWebviewPage) {
      yield OnWebviewPage();
    }
  }
}
