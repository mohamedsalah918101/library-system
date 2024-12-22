import 'Book.dart';
import 'User.dart';

class Library {
  List<Book> books = [];
  List<User> users = [];

  void addBook(Book book) {
    books.add(book);
    print('Book added: ${book.title}');
  }

  void addUser(User user) {
    users.add(user);
    print('User added: ${user.name}');
  }

  void borrowBook(int bookId, int userId) {
    // Validate user exists
    var user = users.firstWhere((u) => u.id == userId, orElse: () => null as User);
    if (user == null) {
      print('User not found.');
      return;
    }

    // Validate book exists
    var book = books.firstWhere((b) => b.id == bookId, orElse: () => null as Book);
    if (book == null) {
      print('Book not found.');
      return;
    }

    // Check if book is already borrowed
    if (book.borrowed) {
      print('Book is already borrowed.');
      return;
    }

    // Borrow book
    book.borrowed = true;
    print('Book "${book.title}" borrowed by User "${user.name}".');
  }

  void returnBook(int bookId) {
    // Validate book exists
    var book = books.firstWhere((b) => b.id == bookId, orElse: () => null as Book);
    if (book == null) {
      print('Book not found.');
      return;
    }

    // Check if book is not borrowed
    if (!book.borrowed) {
      print('Book is not borrowed.');
      return;
    }

    // Return book
    book.borrowed = false;
    print('Book "${book.title}" returned.');
  }

  void displayInfo() {
    print('\nLibrary Information:');
    print('Books:');
    for (var book in books) {
      book.displayInfo();
    }
    print('\nUsers:');
    for (var user in users) {
      user.displayInfo();
    }
  }
}
