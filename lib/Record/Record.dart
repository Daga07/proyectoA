// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Record extends StatelessWidget {
  const Record({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          children: [
            Container(
              width: 180,
                  height: 50,
                   child: TextFormField(
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
        )),
    );
  }
}

class re extends StatelessWidget {
  const re({super.key});
  @override
  Widget build(BuildContext context) {
   return Container(
    child: SizedBox(
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
  );
  
  }
}

// ignore: non_constant_identifier_names
Widget Ingresar() {
  return SingleChildScrollView(
    child: Container(
      width: 280,
      height: 430,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: const Color.fromARGB(153, 117, 40, 128), width: 0.4),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Imagen(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(248, 53, 119, 51),
                          width: 0.1),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: const Image(
                        image: AssetImage("imagenes/perfil.png"),
                        fit: BoxFit.contain),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              const Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  SizedBox(
                    width: 180,
                    height: 20,
                    child: TextField(),
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
                  const SizedBox(height: 15),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(248, 53, 119, 51),
                          width: 0.1),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: const Image(
                        image: AssetImage("imagenes/correo.png"),
                        fit: BoxFit.contain),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(153, 255, 0, 0)),
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
                  const SizedBox(height: 15),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(248, 53, 119, 51),
                          width: 0.1),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: const Image(
                        image: AssetImage("imagenes/codigo.png"),
                        fit: BoxFit.contain),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(153, 255, 0, 0)),
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
                  const SizedBox(height: 15),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(248, 53, 119, 51),
                          width: 0.1),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: const Image(
                        image: AssetImage("imagenes/codigo.png"),
                        fit: BoxFit.contain),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(153, 255, 0, 0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget Imagen() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border:
          Border.all(color: const Color.fromARGB(167, 72, 160, 61), width: 0.2),
    ),
    clipBehavior: Clip.hardEdge,
    child: const Image(
        image: AssetImage("imagenes/usuario.png"), fit: BoxFit.contain),
  );
}
