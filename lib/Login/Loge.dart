// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:proyecto/Help_user/Help.dart';
import 'package:proyecto/Record/Record.dart';


class Loge extends StatelessWidget {
  const Loge({super.key});

  @override
  Widget build(BuildContext context) {
   

  return Container(
    width: 250,
    height: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      border: Border.all(
          color: const Color.fromARGB(153, 117, 40, 128), width: 0.2),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                const SizedBox(height: 50),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(0, 255, 255, 255),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          ("imagenes/correo.png"),
                        ), //AssetImage
                        fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                const SizedBox(height: 50),
                SizedBox(
                  width: 180,
                  height: 50,
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
                            color: Color.fromARGB(192, 160, 61, 122), width: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(height: 50),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(0, 255, 255, 255),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          ("imagenes/contraseña.png"),
                        ), //AssetImage
                        fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                const SizedBox(height: 20),
                SizedBox(
                  width: 180,
                  height: 50,
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
                            color: Color.fromARGB(192, 160, 61, 122), width: 2),
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
                    color: const Color.fromARGB(192, 114, 40, 86), width: 0.5),
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
        backgroundColor: const Color.fromARGB(255, 240, 211, 240), // Color del texto
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0), // Padding del botón
        textStyle: const TextStyle(
          fontSize: 12,
          fontFamily: 'Montserrat', // Fuente personalizada
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Bordes redondeados
        ),
        elevation: 10, // Sombra del botón
        shadowColor: Colors.black, // Color de la sombra
      ),
      child: const Text('Registro'),
    )
        ),
            const SizedBox(width: 20),
           Container(
  width: 100,
  height: 40,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
      color: const Color.fromARGB(192, 114, 40, 86),
      width: 0.5,
    ),
  ),
  child: MaterialButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Help()),
      );
    },
   
    child: const Text('TextButton'),
  ),
),

          ],
        )
      ],
    ),
  );
  }

}

