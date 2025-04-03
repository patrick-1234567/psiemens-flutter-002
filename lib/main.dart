import 'package:flutter/material.dart';

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

// Pantalla principal con dos botones para navegar
class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo Stateless vs Stateful')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaStateless()),
                );
              },
              child: Text('Ir a StatelessWidget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaStateful()),
                );
              },
              child: Text('Ir a StatefulWidget'),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla con texto fijo usando StatelessWidget
class PantallaStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatelessWidget')),
      body: Center(
        child: Text(
          'Este es un texto fijo.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// Pantalla con un contador usando StatefulWidget
class PantallaStateful extends StatefulWidget {
  @override
  _PantallaStatefulState createState() => _PantallaStatefulState();
}

class _PantallaStatefulState extends State<PantallaStateful> {
  int contador = 0;

  void incrementarContador() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatefulWidget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contador: $contador',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementarContador,
              child: Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}