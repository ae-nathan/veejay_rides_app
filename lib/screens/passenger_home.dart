import 'package:flutter/material.dart';
import 'map_screen.dart';


class PassengerHome extends StatelessWidget {
  const PassengerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Passenger Home')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open Map'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const MapScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
