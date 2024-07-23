import 'package:flutter/material.dart';
import 'package:myapp/widgets/card_container.dart';
import 'package:myapp/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthBackground(
      child: Column(children: [
        SizedBox(height: 100),
        CardContainer()
      ],)
    ));
  }
}
