import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: Center(
        child: Text(
          'Bienvenido',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}