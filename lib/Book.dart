class Book {
  int id;
  String title;
  bool borrowed;

  Book({required this.id, required this.title, this.borrowed = false});

  void displayInfo() {
    print('Book ID: $id, Title: $title, Borrowed: $borrowed');
  }
}