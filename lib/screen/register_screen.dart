import 'package:flutter/material.dart';
import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('إنشاء حساب جديد'), backgroundColor: Colors.blue[700]),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'الاسم الكامل', prefixIcon: Icon(Icons.person), border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'يرجى إدخال الاسم';
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: 'رقم الهاتف', prefixIcon: Icon(Icons.phone), border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'يرجى إدخال رقم الهاتف';
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'كلمة المرور', prefixIcon: Icon(Icons.lock), border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'يرجى إدخال كلمة المرور';
                  if (value.length < 6) return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
                  return null;
                },
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    }
                  },
                  child: Text('إنشاء الحساب'),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}