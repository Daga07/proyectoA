// ignore_for_file: file_names, non_constant_identifier_names, unused_import, unnecessary_const, avoid_unnecessary_containers
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/Help_user/Help.dart';
import 'package:proyecto/Record/Record.dart';
import '/Tab_bars/Tab_bars.dart';

class Loge extends StatefulWidget {
  const Loge({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LogeState createState() => _LogeState();
}

class _LogeState extends State<Loge> {
  // Create TextEditingController instances
  final TextEditingController _User = TextEditingController();
  final TextEditingController _Log = TextEditingController();

  Color _colores = Colors.grey;
  bool _isExpanded = false;

  @override
  void dispose() {
    _User.dispose();
    _Log.dispose();
    super.dispose();
  }

  void _Sizebox() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      // tiempo que tarda en abrir el container animado
      setState(() {
        _isExpanded = !_isExpanded;
        _colores = _isExpanded ? Colors.red : Colors.grey;
      });
      Future.delayed(const Duration(milliseconds: 2000), () {
        // tiempo que tarda en cerrar el container animado
        setState(() {
          _isExpanded = !_isExpanded;
          _colores = _isExpanded ? Colors.red : Colors.grey;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 280,
            height: 240,
            // tiempo que tarda en abrir el container animado

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
                            controller: _User,
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
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        _colores), // Color del borde cuando está habilitado pero no enfocado
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
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 180,
                          height: 60,
                          child: TextField(
                            maxLength: 10,
                            controller: _Log,
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
                                    width:
                                        2), // Color del borde al estar enfocado
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        _colores), // Color del borde cuando está habilitado pero no enfocado
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
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                            color: const Color.fromARGB(146, 40, 114, 56),
                            width: 0.9),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Record(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                          backgroundColor:
                              const Color.fromARGB(255, 213, 240, 211),
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
                                BorderRadius.circular(20), // Bordes redondeados
                          ),
                          elevation: 40, // Sombra del botón
                          shadowColor: Colors.black, // Color de la sombra
                        ),
                        child: const Text('Registro'),
                      ),
                    ),
                    const SizedBox(width: 22),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                            color: const Color.fromARGB(146, 40, 114, 56),
                            width: 0.9),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_Log.text.isNotEmpty && _User.text.isNotEmpty) {
                            concide();
                          } else {
                            error();
                            _Sizebox();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                          backgroundColor:
                              const Color.fromARGB(255, 213, 240, 211),
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
                                BorderRadius.circular(20), // Bordes redondeados
                          ),
                          elevation: 40, // Sombra del botón
                          shadowColor: Colors.black, // Color de la sombra
                        ),
                        child: const Text('Loguear'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget error() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        // Iniciar temporizador para cerrar el BottomSheet después de 3 segundos
        Future.delayed(const Duration(seconds: 3), () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        });
        return SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  // liena de color en un contenar al fina, el pricipio, derecha o izquirda
                  color: Colors.red,
                  // Color intermedio para la línea superior
                  width: 1.0,
                ),
              ),
            ),
            height: 120,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Text(
                        'CAMPOS VACÍOS',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontFamily: AutofillHints.addressCity),
                      ),
                      Image.asset(
                        'imagenes/error.gif',
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: const Time(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
    return Container();
  }

  Widget concide() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        // Iniciar temporizador para cerrar el BottomSheet después de 3 segundos
        Future.delayed(const Duration(seconds: 3), () {
          if (Navigator.canPop(context)) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Tan_bars()),
            );
          }
        });
        return SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(
                // liena de color en un contenar al fina, el pricipio, derecha o izquirda
                color: Colors.black,
                width: 1.0,
              ),
            )),
            height: 100,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Text(
                        'USUARIO INGRESÓ CON ÉXITO',
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontFamily: AutofillHints.addressCity),
                      ),
                      Image.asset(
                        'imagenes/employee.gif',
                        width: 50,
                        height: 50,
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            child: const Time(),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
    return Container();
  }
}

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  int segundos = 3;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    iniciarTimer();
  }

  void iniciarTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (segundos > 0) {
          segundos--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tiempo restante: $segundos segundos',
        style: const TextStyle(fontSize: 10),
      ),
    );
  }
}
