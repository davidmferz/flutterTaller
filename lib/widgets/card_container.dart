import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        decoration: _createCardShape(),
        );
  }

  BoxDecoration _createCardShape() => BoxDecoration(
    color:Colors.white,
    borderRadius: BorderRadius.circular(25),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 15,
        offset: Offset(0,5)
      )
    ]
  );
}
