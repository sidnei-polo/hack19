class Register {

  String description;

  DateTime dateTime;

  Status status;

  Register({this.description, this.dateTime, this.status});
}

enum Status
{
  open,
  processing,
  finished
}