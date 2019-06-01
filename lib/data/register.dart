class Register {

  String title;

  String description;

  DateTime dateTime;

  Status status;

  Register({this.title, this.description, this.dateTime, this.status});
}

enum Status
{
  open,
  processing,
  finished
}