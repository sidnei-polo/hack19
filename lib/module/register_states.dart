import 'package:equatable/equatable.dart';
import 'package:hack_19/data/register.dart';


abstract class RegisterState extends Equatable {
  RegisterState([List props = const []]) : super(props);
}

class UninitializedState extends RegisterState {
  @override
  String toString() => 'UninitializedState';
}

class ErrorState extends RegisterState {
  @override
  String toString() => 'ErrorState';
}

class RegisterLoadedState extends RegisterState {
  final List<Register> registers;

  RegisterLoadedState(this.registers) : super([registers]);

  @override
  String toString() => 'EventsLoadedState';
}
