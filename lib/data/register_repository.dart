import 'package:hack_19/data/register.dart';

class RegisterRepository {

  Future<List<Register>> fetch(int page) async {
    var mockEvents = [
      Register(description: "Problema na rodovia", dateTime: DateTime.now(), status: Status.open)
    ];
    return mockEvents;
  }
}