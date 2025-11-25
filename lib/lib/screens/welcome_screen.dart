import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.car_rental, size: 100, color: Colors.blue[700]),
              SizedBox(height: 20),
              Text(
                'مركبتي',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue[700]),
              ),
              Text(
                'نظام إيجاد المركبات المفقودة',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                  },
                  child: Text('إنشاء حساب جديد'),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15)),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('تسجيل الدخول'),
                  style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}