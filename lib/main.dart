import 'package:flutter/material.dart';
import 'package:myapp/screens/login_screen.dart';
//import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [SizedBox(height: 220), LoginScreen()],
          ),
        ),
      ),
    );
  }
}
