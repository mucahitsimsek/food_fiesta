import 'package:flutter_bloc/flutter_bloc.dart';

///BaseCubit is a base class for cubit
abstract class BaseCubit<T extends Object> extends Cubit<T> {
  ///BaseCubit is a base class for cubit
  BaseCubit(super.initialState);

  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }
}
