import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Notifications',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          NotificationCard(
            title: 'New Movie Release',
            description: 'Check out our latest movie release - "The Adventure"',
          ),
          NotificationCard(
            title: 'Special Offer!',
            description: 'Get 50% off on all popcorn purchases this weekend!',
          ),
          NotificationCard(
            title: 'Upcoming Events',
            description: 'Join us for a special screening event next Friday.',
          ),
          // Add more NotificationCard widgets as needed
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String description;

  NotificationCard({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description),
        onTap: () {
          // إضافة أي تفاصيل إضافية لفتح التفاصيل أو الإجراء المرتبط بالإشعار.
        },
      ),
    );
  }
}
