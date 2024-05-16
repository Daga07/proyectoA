// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:proyecto/Sensors/Sensors.dart';

class Help extends StatelessWidget {
  const Help({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navegación con Botón'),
        ),
        body: Center(
          child: botones(context),
        )
      ),
    );
  }

  Widget botones(context) {
    return ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sensors ()),
              );
            },
            child: Text('Ir a la Segunda Pantalla'),
          );
      
  }
}
