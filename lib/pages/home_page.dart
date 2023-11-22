import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galeano_pucesi/routes/app_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueGrey[100]!, Colors.blueGrey[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to News App",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
              const SizedBox(height: 30),
              _buildButton(
                  context, "Login", AppRoutes.login, Colors.blue, Icons.login),
              _buildButton(context, "Register", AppRoutes.register,
                  Colors.green, Icons.app_registration),
              _buildButton(context, "Info", AppRoutes.info, Colors.orange,
                  Icons.info_outline),
              _buildButton(context, "About", AppRoutes.about, Colors.purple,
                  Icons.help_outline),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, String route,
      Color color, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton.icon(
        icon: Icon(icon, color: Colors.white),
        label: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        onPressed: () => context.push(route),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          shadowColor: Colors.black,
          elevation: 10,
        ),
      ),
    );
  }
}
