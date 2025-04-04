import 'package:flutter/material.dart';
import 'views/inicio_screen.dart';
import 'views/acercade_screen.dart';
import 'views/contacto_screen.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PantallaPrincipal(),
    );
  }
}

// Pantalla principal con tres botones para navegar
class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplicación en Español')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InicioScreen()),
                );
              },
              child: Text('Ir a Inicio'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AcercaDeScreen()),
                );
              },
              child: Text('Ir a Acerca de'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactoScreen()),
                );
              },
              child: Text('Ir a Contacto'),
            ),
          ],
        ),
      ),
    );
  }
}