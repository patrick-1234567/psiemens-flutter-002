import 'package:flutter/material.dart';

class ContactoScreen extends StatefulWidget {
  @override
  _ContactoScreenState createState() => _ContactoScreenState();
}

class _ContactoScreenState extends State<ContactoScreen> {
  TextEditingController _controller = TextEditingController(); // Controlador para el campo de texto

  @override
  void initState() {
    super.initState();
    print('ContactoScreen: initState llamado'); // Se llama al crear la pantalla
  }

  @override
  void dispose() {
    print('ContactoScreen: dispose llamado'); // Se llama al cerrar la pantalla
    print('Mensaje ingresado: ${_controller.text}'); // Imprime el mensaje ingresado
    _controller.dispose(); // Libera los recursos del controlador
    super.dispose();
  }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contáctanos',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller, // Asigna el controlador al campo de texto
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribe tu mensaje aquí',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Mensaje actual: ${_controller.text}'); // Imprime el mensaje en tiempo real
              },
              child: Text('Enviar Mensaje'),
            ),
          ],
        ),
      ),
    );
  }
}