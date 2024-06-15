// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:proyecto/Help_user/Help.dart';
import 'package:proyecto/Record/Record.dart';

import '../Tab_bars/Tab_bars.dart';

class Loge extends StatefulWidget {
  @override
  _LogeState createState() => _LogeState();
}

class _LogeState extends State<Loge> {
  // Create TextEditingController instances
  final TextEditingController _User = TextEditingController();
  final TextEditingController _Log = TextEditingController();
  bool _Error = false;
  String mensaje = '';
  double _width = 280;
  double _height = 230;
  double _size = 0;
  Color _colores = Colors.grey;
  bool _isExpanded = false;

  @override
  void dispose() {
    _User.dispose();
    _Log.dispose();
    super.dispose();
  }

  void _showErrorMessage() {
    Future.delayed(const Duration(milliseconds: 1700), () {
      //tiempo que en tarde en abrir el mensaje de error
      setState(() {
        _Error = true;
      });

      Future.delayed(const Duration(milliseconds: 2000), () {
        // tiempo que se tarda en cerra el error
        setState(() {
          _Error = false;
        });
      });
    });
  }

  // ignore: non_constant_identifier_names
  void _Sizebox() {
    // tiempo que tarda en abrir el container animado
    setState(() {
      _isExpanded = !_isExpanded;
      _width = _width == 280 ? 280 : 280;
      _height = _height == 230 ? 290 : 230;
      _size = _size == 0 ? 25 : 0;
      _colores = _isExpanded ? Colors.red : Colors.grey;
    });
    Future.delayed(const Duration(milliseconds: 2900), () {
      // tiempo que tarda en cerrar el container animado
      setState(() {
        _isExpanded = !_isExpanded;
        _width = _width == 280 ? 270 : 280;
        _height = _height == 230 ? 290 : 230;
        _size = _size == 0 ? 25 : 0;
        _colores = _isExpanded ? Colors.red : Colors.grey;
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
          AnimatedContainer(
            width: _width,
            height: _height,
            duration: const Duration(
                milliseconds:
                    1699), // tiempo que tarda en abrir el container animado
            curve: Curves.linear,
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
                SizedBox(height: _size),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: error(),
                    )
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
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(146, 40, 114, 56),
                            width: 0.5),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Record()),
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
                          if (_Log.text.isNotEmpty && _User.text.isNotEmpty) {
                            print('usuario:${_User.text}');
                            print('contra:${_Log.text}');
                          } else {
                            print('campo vasio');
                            setState(() {
                              _showErrorMessage();
                              _Sizebox();
                            });
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
        ],
      ),
    );
  }

  Widget error() {
    if (_Error) {
      return Positioned(
        left: 1,
        top: 1,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(1),
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
            child: const Column(
              children: <Widget>[
                Text(
                  'CAMPOS VACIOS',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontFamily: AutofillHints.url,
                  ),
                ),
                Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 25,
                )
              ],
            ),
          ),
        ),
      );
    }
    return Container(); // Retorna un container vacío si no hay error
  }
}
