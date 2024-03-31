import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> {
  BaseBloc(super.initialState);

  void emitState(S state) {
    if (isClosed) return;
    //ignore_for_file: invalid_use_of_visible_for_testing_member
    super.emit(state);
  }
}
