part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToMainPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToInfoPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToKontakPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToWebviewPage extends PageEvent {
  @override
  List<Object> get props => [];
}
