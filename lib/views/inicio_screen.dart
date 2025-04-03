import 'package:flutter/material.dart';
import 'acercade_screen.dart';
import 'contacto_screen.dart';

class InicioScreen extends StatefulWidget {
  @override
  _InicioScreenState createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  int contador = 0; // Variable de estado para el contador

  @override
  void initState() {
    super.initState();
    // Aquí puedes inicializar datos o realizar configuraciones necesarias
    print('InicioScreen: initState llamado');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Contador: $contador',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contador++; // Incrementa el contador y actualiza la UI
                });
              },
              child: Text('Incrementar Contador'),
            ),
            SizedBox(height: 20),
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