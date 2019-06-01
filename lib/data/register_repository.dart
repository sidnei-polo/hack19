import 'package:hack_19/data/register.dart';

class RegisterRepository {

  Future<List<Register>> fetch(int page) async {
    var mockEvents = [
      Register(title: "Burraco na rua XV de Novembro", description: "Burraco na rua XV de Novembro, em frete a Universidade Positivo", dateTime: DateTime.now().add(new Duration(days: -45)), status: Status.open),
      Register(title: "Calçado da Pc. Rui Barbosa com defeito", description: "Calçado da Pc. Rui Barbosa com defeito, pedras soltas...", dateTime: DateTime.now().add(new Duration(days: -30)), status: Status.open),
      Register(title: "Furtos no Pq. Nautico", description: "Furto no Pq. Nautico, Samsung 7 Edge, mochila e documentos...", dateTime: DateTime.now(), status: Status.open)
    ];
    return mockEvents;
  }
}