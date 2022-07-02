part of 'igpost_bloc.dart';

abstract class IgpostEvent extends Equatable {
  const IgpostEvent();
}

class FetchIgpost extends IgpostEvent {
  @override
  List<Object> get props => [];
}
