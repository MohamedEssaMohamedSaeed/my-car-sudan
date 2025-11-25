import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';  // أضف هذا
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مركبتي - السودان',
      localizationsDelegates: [  // أضف هذا
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [  // وأضف هذا
        Locale('ar', 'AE'), // Arabic
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Tajawal',
      ),
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}