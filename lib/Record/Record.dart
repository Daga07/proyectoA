// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:proyecto/Tab_bars/Tab_bars.dart';

// ignore: camel_case_types
class Record extends StatelessWidget {
  const Record({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            // Altura personalizada del AppBar
            preferredSize:
                const Size.fromHeight(20), // Altura personalizada del AppBar
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(
                      10), // Radio de borde en la parte inferior
                ),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(167, 160, 61, 122),
                    Color.fromARGB(235, 73, 170, 173),
                    Color.fromARGB(167, 61, 160, 61)
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
          body: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Center(
                child: Ingresar(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Ingresar(BuildContext context) {
  return SingleChildScrollView(
    child: Container(
      width: 280,
      height: 470,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: const Color.fromARGB(153, 117, 40, 128), width: 0.4),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Imagen(),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: <Widget>[
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(248, 53, 119, 51),
                          width: 0.1),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: const Image(
                        image: AssetImage("imagenes/add.gif"),
                        fit: BoxFit.contain),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    height: 40,
                    child: TextField(
                      style: const TextStyle(fontSize: 15),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        hintText:
                            'Nombre completo', // Texto de muestra cuando el cuadro de texto está vacío
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const SizedBox(height: 15),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(248, 53, 119, 51),
                          width: 0.1),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: const Image(
                        image: AssetImage("imagenes/mail.gif"),
                        fit: BoxFit.contain),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    height: 40,
                    child: TextField(
                      style: const TextStyle(fontSize: 15),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Correo',
                        hintText:
                            'Correo', // Texto de muestra cuando el cuadro de texto está vacío
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(248, 53, 119, 51),
                          width: 0.1),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: const Image(
                        image: AssetImage("imagenes/password1.gif"),
                        fit: BoxFit.contain),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: 180,
                        height: 40,
                        child: TextField(
                          style: const TextStyle(fontSize: 15),
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            hintText:
                                'Contraseña', // Texto de muestra cuando el cuadro de texto está vacío
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
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(248, 53, 119, 51),
                          width: 0.1),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: const Image(
                        image: AssetImage("imagenes/pasword2.gif"),
                        fit: BoxFit.contain),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    height: 40,
                    child: TextField(
                      style: const TextStyle(fontSize: 15),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        hintText:
                            'Re Contraseña', // Texto de muestra cuando el cuadro de texto está vacío
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => Tan_bars()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: const Color.fromARGB(255, 213, 240, 211),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 16.0), // Padding del botón
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
                  child: const Text('Registrarse'),
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
        image: AssetImage("imagenes/Registro.png"), fit: BoxFit.contain),
  );
}
