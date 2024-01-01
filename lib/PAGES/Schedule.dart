import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schedule App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SchedulePage(),
    );
  }
}

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        backgroundColor: Color.fromARGB(255, 127, 154, 156),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ScheduleItem('Event 1', '10:00 AM - 11:30 AM', Colors.teal),
          ScheduleItem('Event 2', '1:00 PM - 2:30 PM', Colors.orange),
          ScheduleItem('Event 3', '3:00 PM - 4:30 PM', Colors.blue),
        ],
      ),
    );
  }
}

class ScheduleItem extends StatelessWidget {
  final String eventName;
  final String eventTime;
  final Color color;

  ScheduleItem(this.eventName, this.eventTime, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 16),
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              eventName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              eventTime,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
