
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_19/module/register_bloc.dart';
import 'package:hack_19/module/register_states.dart';

class HomeView extends StatefulWidget {
  HomeView() : super();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("De Olho"),
      ),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildBody(BuildContext context) {
    var bloc = BlocProvider.of<RegisterBloc>(context);
    return BlocBuilder(
        bloc: bloc,
        builder: (context, state) {
          switch (state.runtimeType) {
            case RegisterLoadedState:
              return _buildRegisterListWidget(bloc, state);
            default:
              return Center(child: Text('Failed to fetch'));
          }
        }
    );
  }

  Widget _buildRegisterListWidget(RegisterBloc bloc, RegisterLoadedState state) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Text(state.registers[position].description),
        );
      },
      itemCount: state.registers.length,
    );
  }
}