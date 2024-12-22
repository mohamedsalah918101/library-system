import 'Book.dart';
import 'Library.dart';
import 'User.dart';

void main() {
  // Create library instance
  Library library = Library();

  // Add books
  library.addBook(Book(id: 1, title: 'Flutter for Beginners'));
  library.addBook(Book(id: 2, title: 'Advanced Dart Programming'));

  // Add users
  library.addUser(User(id: 1, name: 'Mohamed Salah'));
  library.addUser(User(id: 2, name: 'Ali Hassan'));

  // Perform operations
  library.borrowBook(1, 1); // Mohamed borrows Flutter for Beginners
  library.borrowBook(2, 2); // Ali borrows Advanced Dart Programming
  library.returnBook(1); // Mohamed returns Flutter for Beginners
  library.borrowBook(2, 1); // Mohamed borrows Advanced Dart Programming

  // Display final state
  library.displayInfo();
}