import 'package:flutter/material.dart';

class AcercaDeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa a la pantalla anterior
          },
        ),
      ),
      body: Center(
        child: Text(
          'Sobre nosotros',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}