// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class sesion extends StatelessWidget {
  String nombre = "Daniel";
  String apellido = "Gallo";

  sesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      width: 200,
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 106, 255, 7),
                        shape: BoxShape.circle,
                      ),
                      child: const Image(
                          image: AssetImage("imagenes/user.png"),
                          fit: BoxFit.contain),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ajusta el tamaño de la columna al tamaño de sus hijos
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Alinea los elementos a la izquierda
                  children: <Widget>[
                    Text(
                      nombre,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Espacio entre el título y el subtítulo
                    Text(
                      apellido,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: const Color.fromARGB(255, 81, 7, 255),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
