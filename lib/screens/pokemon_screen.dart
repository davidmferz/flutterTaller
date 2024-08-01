import 'package:flutter/material.dart';
import 'package:myapp/helpers/preferences.dart';


class PokemonScreen extends StatefulWidget {
   final String barcodeScanRes;
  const PokemonScreen({super.key, required this.barcodeScanRes});

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  

  @override
  Widget build(BuildContext context) {
    final idPokemonScaner = widget.barcodeScanRes; // Replace 'your_barcode_scan_result' with the actual value

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
      ),
      body:  Padding(
        padding:const  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$idPokemonScaner.png"),
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
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushReplacementNamed(context, 'qr')
              }, 
              child: 
              const Text('Cancelar')
            )
          ],
        ),
      ),
    );
  }
}