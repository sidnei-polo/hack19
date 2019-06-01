import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_19/module/register_bloc.dart';
import 'package:hack_19/module/register_events.dart';
import 'package:hack_19/view/home_view.dart';
import 'package:hack_19/view/resources/theme_colors.dart';

class App extends StatelessWidget {

  final RegisterBloc registerBloc;

  App(this.registerBloc) {
    registerBloc.dispatch(Fetch());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
        blocProviders: [
          BlocProvider<RegisterBloc>(bloc: registerBloc),
        ],
        child: new MaterialApp(
          theme: new ThemeData(
              primaryColor: ThemeColors.accent,
              accentColor: ThemeColors.accent,
              backgroundColor: ThemeColors.backgroundColor,
              scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColor,
              cardColor: ThemeColors.white,
              bottomAppBarTheme: BottomAppBarTheme(color: ThemeColors.white, elevation: 0.0),
              iconTheme: IconThemeData(color: ThemeColors.white),
              primaryIconTheme: IconThemeData(color: ThemeColors.white),
              primaryTextTheme: TextTheme(title: TextStyle(color: ThemeColors.white)),
          ),
          home: new HomeView(),
        )
    );
  }
}
