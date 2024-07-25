// Suggested code may be subject to a license. Learn more: ~LicenseLog:3609955808.
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const double fontSize = 30;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Center(
                child: Text(
              'HomeScreen',
              style: TextStyle(color: Colors.white),
            ))),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Numero de click',
                style: TextStyle(fontSize: HomeScreen.fontSize)),
            Text(
              '$contador',
              style: const TextStyle(fontSize: HomeScreen.fontSize),
            ),
            
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.red,
              onPressed:(){
                Navigator.pushReplacementNamed(context, 'login');
              }, 
            child: const Text('Inicio',style: TextStyle(color:Colors.white),)
            )
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () {
                setState(() {
                  contador--;
                });
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.exposure_minus_1, color: Colors.white),
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {
                setState(() {
                  contador=0;
                });
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.refresh, color: Colors.white),
            ),
            FloatingActionButton(
              heroTag: 'btn3',
              onPressed: () {
                setState(() {
                  contador++;
                });
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.plus_one, color: Colors.white),
            ),
          ],
        ));
  }
}
