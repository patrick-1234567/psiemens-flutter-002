import 'package:flutter/material.dart';

class ContactoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacto'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa a la pantalla anterior
          },
        ),
      ),
      body: Center(
        child: Text(
          'Contáctanos',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}