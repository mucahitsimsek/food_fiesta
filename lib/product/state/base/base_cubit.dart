import 'package:flutter_bloc/flutter_bloc.dart';

///BaseCubit is a base class for cubit
abstract class BaseCubit<S extends Object> extends Cubit<S> {
  ///BaseCubit is a base class for cubit
  BaseCubit(super.initialState);

  @override
  void emit(S state) {
    if (isClosed) return;
    super.emit(state);
  }
}
