import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('مركبتي - السودان')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.car_rental, size: 80, color: Colors.blue),
              SizedBox(height: 20),
              Text('تطبيق إيجاد المركبات المفقودة', 
                   style: TextStyle(fontSize: 18)),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: Text('بدء الاستخدام'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
