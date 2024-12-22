# Library System

A simple library system to manage books and users. This system allows you to add books and users, borrow and return books, and display the current state of the library. 

## Features
- Add new books to the library.
- Add new users to the library.
- Borrow books if they are available.
- Return borrowed books to the library.
- Display detailed information about books and users.

## Project Structure
The project consists of the following main classes:

1. **Book**
   - Attributes: `id`, `title`, `borrowed`
   - Methods: 
     - `displayInfo()` - Displays the book's details.

2. **User**
   - Attributes: `id`, `name`
   - Methods: 
     - `displayInfo()` - Displays the user's details.

3. **Library**
   - Attributes: 
     - `books` - List of books in the library.
     - `users` - List of users registered in the library.
   - Methods:
     - `addBook(Book book)` - Adds a new book to the library.
     - `addUser(User user)` - Adds a new user to the library.
     - `borrowBook(int bookId, int userId)` - Allows a user to borrow a book if it's available.
     - `returnBook(int bookId)` - Returns a borrowed book to the library.
     - `displayInfo()` - Displays the library's current state.

## Prerequisites
- Dart SDK installed on your machine.

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/mohamedsalah918101/library-system
   cd library_system
