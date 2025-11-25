import 'package:flutter/material.dart';
import 'report_car_screen.dart';
import 'search_screen.dart';
import 'my_reports_screen.dart';    // أضف هذا السطر
import 'settings_screen.dart';      // أضف هذا السطر

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مركبتي'),
        backgroundColor: Colors.blue[700],
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(20),
        children: [
          // بطاقة الإبلاغ عن مركبة مفقودة
          _buildMenuCard(
            context,
            'الإبلاغ عن مركبة مفقودة',
            Icons.report_problem,
            Colors.red,
            ReportCarScreen(),
          ),
          
          // بطاقة البحث عن مركبة
          _buildMenuCard(
            context,
            'البحث عن مركبة',
            Icons.search,
            Colors.green,
            SearchScreen(),
          ),
          
          // بطاقة البلاغات السابقة - تم تحديثها
          _buildMenuCard(
            context,
            'البلاغات السابقة',
            Icons.history,
            Colors.orange,
            MyReportsScreen(),  // تغيير من SearchScreen إلى MyReportsScreen
          ),
          
          // بطاقة الإعدادات - تم تحديثها
          _buildMenuCard(
            context,
            'الإعدادات',
            Icons.settings,
            Colors.purple,
            SettingsScreen(),  // تغيير من SearchScreen إلى SettingsScreen
          ),
        ],
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, IconData icon, Color color, Widget screen) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}