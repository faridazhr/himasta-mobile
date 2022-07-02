part of 'igpost_bloc.dart';

abstract class IgpostState extends Equatable {
  const IgpostState();
}

class IgpostInitial extends IgpostState {
  @override
  List<Object> get props => [];
}

class IgpostLoaded extends IgpostState {
  final List<Igpost> igpost;

  IgpostLoaded({this.igpost});

  @override
  List<Object> get props => [igpost];
}
