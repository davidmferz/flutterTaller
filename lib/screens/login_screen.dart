import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: _createCard(),
      ),
    );
  }

  BoxDecoration _createCard() => BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(25),
      );
}
