class User {
  int id;
  String name;

  User({required this.id, required this.name});

  void displayInfo() {
    print('User ID: $id, Name: $name');
  }
}