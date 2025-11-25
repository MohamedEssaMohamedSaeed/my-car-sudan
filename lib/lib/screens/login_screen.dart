import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('تسجيل الدخول'), backgroundColor: Colors.blue[700]),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'رقم الهاتف', prefixIcon: Icon(Icons.phone), border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'كلمة المرور', prefixIcon: Icon(Icons.lock), border: OutlineInputBorder()),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text('تسجيل الدخول'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}