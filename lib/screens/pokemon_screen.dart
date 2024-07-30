import 'package:flutter/material.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
      ),
      body:  Padding(
        padding:const  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png"),
            const SizedBox(height: 16.0),
            const Text(
              "Charizard", 
              style: TextStyle(
                fontSize: 24.0, 
                fontWeight: 
                FontWeight.bold)
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => {}, 
              child: 
              const Text('Capturar pokemon')
            )
          ],
        ),
      ),
    );
  }
}