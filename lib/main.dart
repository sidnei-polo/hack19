import 'package:flutter/cupertino.dart';
import 'package:hack_19/app.dart';
import 'package:hack_19/data/register_repository.dart';
import 'package:hack_19/module/register_bloc.dart';

void main() {
  var repository = RegisterRepository();
  var registerBloc = RegisterBloc(repository);
  runApp(App(registerBloc));
}