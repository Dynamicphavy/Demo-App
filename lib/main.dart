import 'package:flutter/material.dart';
import 'package:demoapp/pages/first_page.dart';
import 'package:demoapp/auth/login_page.dart';
import 'package:demoapp/pages/sam_page.dart';
import 'package:demoapp/pages/settings_page.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
      DevicePreview(
          builder: (context) => 
        const MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/firstpage':(context) => const FirstPage(),
        '/homepage': (context) => const SamPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}