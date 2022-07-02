import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himasta_mobile/models/models.dart';
import 'package:himasta_mobile/services/services.dart';

part 'igpost_event.dart';
part 'igpost_state.dart';

class IgpostBloc extends Bloc<IgpostEvent, IgpostState> {
  IgpostBloc({IgpostState initialState}) : super(initialState);

  @override
  IgpostState get initialState => IgpostInitial();

  @override
  Stream<IgpostState> mapEventToState(
    IgpostEvent event,
  ) async* {
    if (event is FetchIgpost) {
      List<Igpost> igpost = (await IgpostServices.getIgpost()) as List<Igpost>;

      yield IgpostLoaded(igpost: igpost);
    }
  }
}
