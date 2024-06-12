// ignore_for_file: file_names

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:proyecto/Help_user/Help.dart';
import 'package:proyecto/Record/Record.dart';

import '../Tab_bars/Tab_bars.dart';

class Loge extends StatelessWidget {
  const Loge({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: 280,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
              color: const Color.fromARGB(153, 117, 40, 128), width: 0.2),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(0, 255, 255, 255),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              ("imagenes/mail.gif"),
                            ), //AssetImage
                            fit: BoxFit.contain),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 180,
                      height: 40,
                      child: TextField(
                        style: const TextStyle(fontSize: 15),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Correo',
                          hintText:
                              'Introduce tu Correo', // Texto de muestra cuando el cuadro de texto está vacío
                          contentPadding: const EdgeInsets.all(20),
                          border: OutlineInputBorder(
                            // Borde del campo
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            // Borde cuando el campo está enfocado
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(192, 160, 61, 122),
                                width: 2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(0, 255, 255, 255),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              ("imagenes/pasword2.gif"),
                            ), //AssetImage
                            fit: BoxFit.contain),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 180,
                      height: 40,
                      child: TextField(
                        style: const TextStyle(fontSize: 15),
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          hintText:
                              'Introduce tu Contraseña', // Texto de muestra cuando el cuadro de texto está vacío
                          contentPadding: const EdgeInsets.all(20),
                          border: OutlineInputBorder(
                            // Borde del campo
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            // Borde cuando el campo está enfocado
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(192, 160, 61, 122),
                                width: 2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromARGB(146, 40, 114, 56),
                        width: 0.5),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Record()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      backgroundColor: const Color.fromARGB(255, 213, 240, 211),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 16.0), // Padding del botón
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat', // Fuente personalizada
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Bordes redondeados
                      ),
                      elevation: 40, // Sombra del botón
                      shadowColor: Colors.black, // Color de la sombra
                    ),
                    child: const Text('Registro'),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromARGB(146, 40, 114, 56),
                        width: 0.5),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        // ignore: prefer_const_constructors
                        MaterialPageRoute(builder: (context) => Tan_bars()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      backgroundColor: const Color.fromARGB(255, 213, 240, 211),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 16.0), // Padding del botón
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat', // Fuente personalizada
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Bordes redondeados
                      ),
                      elevation: 40, // Sombra del botón
                      shadowColor: Colors.black, // Color de la sombra
                    ),
                    child: const Text('Loguear'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
