import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('المساعدة والدعم'),
        backgroundColor: Colors.blue[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('الدعم الفني'),
              subtitle: Text('+249123456789'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('البريد الإلكتروني'),
              subtitle: Text('support@mycar.sd'),
            ),
            ListTile(
              leading: Icon(Icons.help_center),
              title: Text('الأسئلة الشائعة'),
              onTap: () {
                // شاشة الأسئلة الشائعة
              },
            ),
          ],
        ),
      ),
    );
  }
}