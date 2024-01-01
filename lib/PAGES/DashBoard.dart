import 'package:ashtar_project/PAGES/Courses.dart';
import 'package:ashtar_project/PAGES/GradeBook.dart';
import 'package:ashtar_project/PAGES/Schedule.dart';
import 'package:ashtar_project/PAGES/message.dart';
import 'package:ashtar_project/PAGES/notification.dart';
import 'package:ashtar_project/PAGES/search.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text(
          "HELLO NADY",
          style: TextStyle(
            color:
                Color.fromARGB(255, 255, 255, 255), 
            fontSize: 20, 
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.message, color: Colors.white),
            tooltip: 'message Icon',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MessagePage()), 
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            tooltip: 'notifications Icon',
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage()),
            );},
          ), 
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            tooltip: 'search Icon',
            onPressed: () {              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage()),
            );},
          ), 
        ], 
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Color.fromARGB(255, 127, 154, 156),
      ), 
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CardWidget(
                imageAsset: 'assets/images/COURSES.png',
                buttonText: 'View Details',
                onPressed: () {
Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        CoursesPage()), 
              );                },
              ),
              SizedBox(height: 16.0),

              // Card 2
              CardWidget(
                imageAsset: 'assets/images/SCHEDULE.png',
                buttonText: 'View Details',
                onPressed: () {
 Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SchedulePage()), 
              );                },
              ),
              SizedBox(height: 16.0),

              CardWidget(
                imageAsset: 'assets/images/message me.png',
                buttonText: 'View Details',
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String imageAsset;
  final String buttonText;
  final VoidCallback onPressed;

  CardWidget({
    required this.imageAsset,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imageAsset,
            fit: BoxFit.cover,
            height: 200.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: onPressed,
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Nady Muhammed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24, 
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 49, 133, 172),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/test1.png'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
             onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            leading: Icon(Icons.schedule),
            title: Text(
              'Schedule',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SchedulePage()), 
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(
              'Courses',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CoursesPage()), 
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.cast_for_education),
            title: Text(
              'Gradebook',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                         BookshelfPage()), 
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.manage_accounts),
            title: Text(
              'Performance',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
              ),
            ),
             onTap: () => Navigator.of(context).pop(),
        ),
          ListTile(
            leading: Icon(Icons.mic),
            title: Text(
              'Announcement',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                'login', 
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
