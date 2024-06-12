// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proyecto/Animacion/Animacion.dart';
// ignore: unused_import
import 'package:proyecto/Help_user/Help.dart';
import 'package:proyecto/Login/Loge.dart';
// ignore: unused_import
import 'package:proyecto/Record/Record.dart';
// ignore: unused_import
import 'package:proyecto/Sensors/Sensors.dart';
// ignore: unused_import
import 'package:proyecto/Tab_bars/Tab_bars.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Tower());
}

class Tower extends StatelessWidget {
  const Tower({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Flexible(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          home: Menu(context),
        ),
      ),
    );
  }
}

Widget Menu(context) {
  return SingleChildScrollView(
    child: Expanded(
      child: Scaffold(
        appBar: PreferredSize(
          // Altura personalizada del AppBar
          preferredSize:
              const Size.fromHeight(20), // Altura personalizada del AppBar
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.circular(10), // Radio de borde en la parte inferior
              ),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(248, 53, 119, 51),
                  Color.fromARGB(167, 160, 61, 122)
                ], // Colores del degradado
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: AppBar(
              backgroundColor: const Color.fromARGB(
                  0, 102, 10, 10), // Hace que el AppBar sea transparente
              elevation: 0, // Elimina la sombra del AppBar
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            color:
                Color.fromARGB(255, 255, 255, 255), // Color de fondo del cuerpo
          ),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    ImganeRadio(),
                    Animation(),
                    const Loge(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget ImganeRadio() {
  return Container(
    width: 130,
    height: 110,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border:
          Border.all(color: const Color.fromARGB(167, 72, 160, 61), width: 0.1),
    ),
    clipBehavior: Clip.hardEdge,
    child: const Image(
        image: AssetImage("imagenes/towerucev.png"), fit: BoxFit.contain),
  );
}

//record
Widget Animation() {
  // ignore: sized_box_for_whitespace
  return Container(
    width: 200,
    height: 25,
    child: Animacion(),
  );
}
