import 'package:flutter/material.dart';
import 'package:myapp/helpers/preferences.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/pokemon_screen.dart';
import 'package:myapp/screens/qr_screen.dart';
import 'package:myapp/screens/qr_screen2.dart';


void main() async {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: 'login',
      routes: {
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScreen(),
        'qr': (_) => const QrScreen2(),
        'pokemon' : (_) => const PokemonScreen(barcodeScanRes: '98'),
      },
    );
  }
}
