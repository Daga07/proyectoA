// ignore_for_file: file_names, non_constant_identifier_names, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:proyecto/Menu/main.dart';
// ignore: unused_import
import 'package:proyecto/Tab_bars/Tab_bars.dart';

// ignore: camel_case_types
class Record extends StatefulWidget {
  const Record({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> {
  final TextEditingController _Nombre = TextEditingController();
  final TextEditingController _Correo = TextEditingController();
  final TextEditingController _Contrasena = TextEditingController();
  final TextEditingController _Contrasena1 = TextEditingController();
  List<String> controllers = [
    '_Nombre',
    '_Correo',
    '_Contrasena',
    '_Contrasena1'
  ];
  double _width = 280;
  double _height = 470;
  bool _isExpanded = false;
  Color _colores = Colors.grey;

  /*  width: 280,
        height: 470, */
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Asegúrate de liberar todos los controladores cuando el widget se deshaga
    _Nombre.dispose();
    _Correo.dispose();
    _Contrasena.dispose();
    _Contrasena1.dispose();
    super.dispose();
  }

  void _ColorsTex() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _isExpanded = !_isExpanded;
        _colores = _isExpanded ? Colors.red : Colors.grey;
      });
      Future.delayed(const Duration(milliseconds: 2000), () {
        setState(() {
          _isExpanded = !_isExpanded;
          _colores = _isExpanded ? Colors.red : Colors.grey;
        });
      });
    });
  }

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

  Widget Ingresar(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: _width,
        height: _height,
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
            const SizedBox(height: 10),
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
                      child: TextFormField(
                        controller: _Nombre,
                        style: const TextStyle(fontSize: 15),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Nombre',
                          hintText: 'Nombre',
                          contentPadding: const EdgeInsets.all(20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(192, 160, 61, 122),
                              width: 2,
                            ),
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
                      child: TextFormField(
                        controller: _Correo,
                        style: const TextStyle(fontSize: 15),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Correo',
                          hintText: 'Correo',
                          contentPadding: const EdgeInsets.all(20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(192, 160, 61, 122),
                              width: 2,
                            ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: 180,
                          height: 40,
                          child: TextFormField(
                            controller: _Contrasena,
                            style: const TextStyle(fontSize: 15),
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Contraseña',
                              hintText: 'Contraseña',
                              contentPadding: const EdgeInsets.all(20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(192, 160, 61, 122),
                                  width: 2,
                                ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 180,
                      height: 40,
                      child: TextFormField(
                        controller: _Contrasena1,
                        style: const TextStyle(fontSize: 15),
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          hintText: 'Re Contraseña',
                          contentPadding: const EdgeInsets.all(20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(192, 160, 61, 122),
                              width: 2,
                            ),
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
                      if (_Nombre.text.isNotEmpty &&
                          _Correo.text.isNotEmpty &&
                          _Contrasena.text.isNotEmpty &&
                          _Contrasena1.text.isNotEmpty) {
                        if (_Contrasena.text == _Contrasena1.text) {
                          concide();
                        } else {
                          // _showErrorContrasena();
                          // _Sizebox();
                          contrasena();
                          _ColorsTex();
                        }
                      } else {
                        _ColorsTex();
                        error();
                      }

                      /*   Navigator.push(
                        context,
                        // ignore: prefer_const_constructors
                        MaterialPageRoute(builder: (context) => Tan_bars()),
                      );*/
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
        border: Border.all(
            color: const Color.fromARGB(167, 72, 160, 61), width: 0.2),
      ),
      clipBehavior: Clip.hardEdge,
      child: const Image(
          image: AssetImage("imagenes/Registro.png"), fit: BoxFit.contain),
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
        return Container(
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
          height: 100,
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
                )
              ],
            ),
          ),
        );
      },
    );
    return Container();
  }

  Widget contrasena() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        // Iniciar temporizador para cerrar el BottomSheet después de 3 segundos
        Future.delayed(const Duration(seconds: 3), () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        });
        return Container(
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
                      'CONTRASEÑA NO COINCIDEN',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontFamily: AutofillHints.addressCity),
                    ),
                    Image.asset(
                      'imagenes/password.gif',
                      width: 50,
                      height: 50,
                    ),
                  ],
                )
              ],
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Tower(),
            ),
          );
        });
        return Container(
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
                      'USUARIO REGISTRADO CON ÉXITO',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontFamily: AutofillHints.addressCity),
                    ),
                    Image.asset(
                      'imagenes/regitrado_exitoso.gif',
                      width: 50,
                      height: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
    return Container();
  }
}
