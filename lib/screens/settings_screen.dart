import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإعدادات'),
        backgroundColor: Colors.blue[700],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('تعديل الملف الشخصي'),
            onTap: () {
              // الانتقال لشاشة تعديل الملف
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('تغيير كلمة المرور'),
            onTap: () {
              // الانتقال لشاشة تغيير كلمة المرور
            },
          ),
          // في settings_screen.dart استبدل هذا الجزء:
         ListTile(
  leading: Icon(Icons.help),
  title: Text('المساعدة والدعم'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HelpScreen()),
    );
  },
),
          
          
          
          
          
          
          
          
          
          ListTile(
            leading: Icon(Icons.info),
            title: Text('عن التطبيق'),
            onTap: () {
              _showAboutDialog(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('تسجيل الخروج', style: TextStyle(color: Colors.red)),
            onTap: () {
              _showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('عن التطبيق'),
          content: Text('تطبيق مركبتي\nنظام إيجاد المركبات المفقودة في السودان\nالإصدار 1.0.0'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('موافق'),
            ),
          ],
        );
      },
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('تسجيل الخروج'),
          content: Text('هل أنت متأكد من تسجيل الخروج؟'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('إلغاء'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // تسجيل الخروج والعودة للشاشة الرئيسية
              },
              child: Text('تسجيل الخروج'),
            ),
          ],
        );
      },
    );
  }
}