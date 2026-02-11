abstract class CounterState {
  final int count;
  const CounterState(this.count);
}

class IncrementState extends CounterState {
  IncrementState(super.count);
}

class DecrementState extends CounterState {
  DecrementState(super.count);
}

class ResetState extends CounterState {
  ResetState(super.count);
}
