import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 167, 3, 30),
        fontFamily: 'Roboto', colorScheme: ColorScheme.fromSwatch().copyWith(secondary:Color.fromARGB(255, 127, 154, 156)),
      ),
      home: BookshelfPage(),
    );
  }
}

class BookshelfPage extends StatelessWidget {
  final List<Book> books = [
    Book(title: 'The Great Gatsby', author: 'F. Scott Fitzgerald'),
    Book(title: 'To Kill a Mockingbird', author: 'Harper Lee'),
    Book(title: '1984', author: 'George Orwell'),
    Book(title: 'Pride and Prejudice', author: 'Jane Austen'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BookGrade'),
        backgroundColor: Color.fromARGB(255, 127, 154, 156),

      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookTile(
            book: books[index],
            onPressed: () {
              print('Book ${books[index].title} pressed!');
            },
          );
        },
      ),
    );
  }
}

class Book {
  final String title;
  final String author;

  Book({required this.title, required this.author});
}

class BookTile extends StatelessWidget {
  final Book book;
  final VoidCallback onPressed;

  BookTile({required this.book, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          book.title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        subtitle: Text(
          'Author: ${book.author}',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
          ),
        ),
        trailing: Icon(
          Icons.book,
          color: Color.fromARGB(255, 127, 154, 156),
        ),
        onTap: onPressed,
      ),
    );
  }
}
