import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Page'),
        backgroundColor: Colors.teal, 
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          NotificationCard(
            message: 'New Message Received',
            onPressed: () {

              print('New Message Received pressed!');
            },
          ),
          SizedBox(height: 16),
          NotificationCard(
            message: 'You have a meeting at 2 PM',
            onPressed: () {
              print('Meeting at 2 PM pressed!');
            },
          ),
          SizedBox(height: 16),
          NotificationCard(
            message: 'Reminder: Pay the bills',
            onPressed: () {
              print('Pay the bills pressed!');
            },
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String message;
  final VoidCallback onPressed;

  NotificationCard({required this.message, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          message,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: onPressed,
      ),
    );
  }
}
