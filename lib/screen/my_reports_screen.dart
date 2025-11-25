import 'package:flutter/material.dart';

class MyReportsScreen extends StatefulWidget {
  @override
  _MyReportsScreenState createState() => _MyReportsScreenState();
}

class _MyReportsScreenState extends State<MyReportsScreen> {
  List<Map<String, String>> myReports = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('البلاغات السابقة'),
        backgroundColor: Colors.blue[700],
      ),
      body: myReports.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.history, size: 80, color: Colors.grey),
                  SizedBox(height: 20),
                  Text(
                    'لا توجد بلاغات سابقة',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: myReports.length,
              itemBuilder: (context, index) {
                var report = myReports[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.car_repair, color: Colors.orange),
                    title: Text('${report['type']} - ${report['plate']}'),
                    subtitle: Text('الحالة: ${report['status']}'),
                    trailing: Text('${report['date']}'),
                  ),
                );
              },
            ),
    );
  }
}