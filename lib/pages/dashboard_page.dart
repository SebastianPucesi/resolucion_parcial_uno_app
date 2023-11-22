import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Page"),
        backgroundColor: const Color.fromARGB(
            255, 255, 255, 255), // Color pastel para la AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lime[100]!, // Color pastel claro para el fondo
              const Color.fromARGB(
                  255, 254, 255, 255), // Otro color pastel claro para el fondo
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 4.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "You are in the Dashboard Page. Great!!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepOrange, // Color de contraste para el texto
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
