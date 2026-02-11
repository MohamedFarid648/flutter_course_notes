import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_project/cubit/counter_state.dart';

//using default way
class CounterCubitDefault extends Cubit<int> {
  CounterCubitDefault() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
  void reset() => emit(0);
}

//isolate state to abstract class
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(ResetState(0));

  void increment() => emit(IncrementState(state.count + 1));
  void decrement() => emit(DecrementState(state.count - 1));
  void reset() => emit(ResetState(0));
}
