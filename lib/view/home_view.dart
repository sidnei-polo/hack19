
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_19/module/register_bloc.dart';
import 'package:hack_19/module/register_states.dart';
import 'package:hack_19/view/new_record_view.dart';
import 'package:hack_19/view/widget/register_item_view.dart';

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
      floatingActionButton: _buildFloatActionButton(context),
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
              return _buildRegisterListWidget(state);
            default:
              return Center(child: Text('Failed to fetch'));
          }
        }
    );
  }

  Widget _buildRegisterListWidget(RegisterLoadedState state) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 4),
      itemBuilder: (context, position) {
        return RegisterItemView(state.registers[position]);
      },
      itemCount: state.registers.length,
    );
  }

  Widget _buildFloatActionButton(BuildContext context) {
    return
      Container(
      width: 72.0,
      height: 72.0,
      margin: const EdgeInsets.only(top: 20),
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        border: new Border.all(
          color: Theme
              .of(context)
              .accentColor
              .withAlpha(25),
          width: 8.0,
        ),
      ),
      child: new RawMaterialButton(
        shape: new CircleBorder(),
        elevation: 0.0,
        fillColor: Theme
            .of(context)
            .accentColor,
        child: Icon(
            Icons.add
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewRecordView(), fullscreenDialog: true),
          );
        } ,
      ),
    );
  }
}