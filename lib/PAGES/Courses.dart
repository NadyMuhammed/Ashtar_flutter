import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CoursesPage(),
    );
  }
}

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        backgroundColor: const Color.fromARGB(255, 127, 154, 156),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CourseCard(
            'Course Flutter',
            'Flutter is an open-source framework by Google for building natively compiled applications with expressive and flexible user interfaces.',
            onPressed: () {
              print('Course Flutter pressed!');
            },
          ),
          CourseCard(
            'Course Dart',
            'Dart is a client-optimized programming language developed by Google, known for its simplicity, speed, and versatility, and is primarily used in conjunction with the Flutter framework for cross-platform app development.',
            onPressed: () {
              print('Course dart pressed!');
            },
          ),
          CourseCard(
            'Course C++',
            'Description for Course 3',
            onPressed: () {
              print('Course C++ pressed!');
            },
          ),
          CourseCard(
            'Course C',
            'Description for Course 1',
            onPressed: () {
              print('Course C pressed!');
            },
          ),
          CourseCard(
            'Course C#',
            'Description for Course 2',
            onPressed: () {
              print('Course C# pressed!');
            },
          ),
          CourseCard(
            'Course Python',
            'Description for Course 3',
            onPressed: () {
              print('Course Python pressed!');
            },
          ),
          CourseCard(
            'Course HTML',
            'Description for Course 1',
            onPressed: () {
              print('Course HTML pressed!');
            },
          ),
          CourseCard(
            'Course FrontEnd',
            'Description for Course 2',
            onPressed: () {
              print('Course FrontEnd pressed!');
            },
          ),
          CourseCard(
            'Course BackEnd',
            'Description for Course 3',
            onPressed: () {
              print('Course BackEnd pressed!');
            },
          ),
          CourseCard(
            'Course .NET',
            'Description for Course 1',
            onPressed: () {
              print('Course .NET pressed!');
            },
          ),
          CourseCard(
            'Course SQL',
            'Description for Course 2',
            onPressed: () {
              print('Course SQL pressed!');
            },
          ),
          CourseCard(
            'Course Cyber Security',
            'Description for Course 3',
            onPressed: () {
              print('Course Cyber Security pressed!');
            },
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onPressed; 

  CourseCard(this.title, this.description, {required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: onPressed, 
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 127, 154, 156),
                ),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
