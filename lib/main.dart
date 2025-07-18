import 'package:demoapp/pages/sam_page.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/auth/login_page.dart';
import 'package:demoapp/pages/settings_page.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) =>
      MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: {
        '/homepage': (context) => const SamPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}