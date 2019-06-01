import 'package:equatable/equatable.dart';

abstract class RegisterBlocEvent extends Equatable {}

class Fetch extends RegisterBlocEvent {
  @override
  String toString() => 'Fetch';
}
