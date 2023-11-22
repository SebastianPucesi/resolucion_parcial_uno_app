import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galeano_pucesi/routes/app_route.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: const Color.fromARGB(
            255, 255, 255, 255), // Color pastel para la AppBar
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 255, 255), // Color pastel claro
              Color.fromARGB(255, 255, 255, 255), // Otro color pastel claro
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard("This is a Login Page"),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => context.push(AppRoutes.dashoard),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.purple[200], // Color pastel del botón
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text("Dashboard"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String text) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
