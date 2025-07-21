import 'package:flutter/material.dart';
import 'passenger_home.dart';
import 'driver_home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailCtrl = TextEditingController();
    TextEditingController passwordCtrl = TextEditingController();

    String selectedRole = 'passenger'; // default role

    return Scaffold(
      appBar: AppBar(title: const Text("Login - Veejay Rides")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: emailCtrl, decoration: const InputDecoration(labelText: 'Email')),
            TextField(controller: passwordCtrl, decoration: const InputDecoration(labelText: 'Password'), obscureText: true),
            const SizedBox(height: 16),
            DropdownButton<String>(
              value: selectedRole,
              items: const [
                DropdownMenuItem(value: 'passenger', child: Text('Passenger')),
                DropdownMenuItem(value: 'driver', child: Text('Driver')),
              ],
              onChanged: (val) {
                selectedRole = val!;
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (selectedRole == 'driver') {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const DriverHome()));
                } else {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const PassengerHome()));
                }
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

