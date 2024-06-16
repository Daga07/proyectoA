// ignore_for_file: file_names, non_constant_identifier_names
import 'package:flutter/material.dart';
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
  bool _Error = false;
  bool _Errorcontra = false;
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

  void _showErrorMessage() {
    Future.delayed(const Duration(milliseconds: 1000), () {
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

  void _showErrorContrasena() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      //tiempo que en tarde en abrir el mensaje de error
      setState(() {
        _Errorcontra = true;
      });

      Future.delayed(const Duration(milliseconds: 2000), () {
        // tiempo que se tarda en cerra el error
        setState(() {
          _Errorcontra = false;
        });
      });
    });
  }

  void _Sizebox() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _isExpanded = !_isExpanded;
        _width = _width == 280 ? 280 : 280;
        _height = _height == 470 ? 540 : 470;
        _colores = _isExpanded ? Colors.red : Colors.grey;
      });
      Future.delayed(const Duration(milliseconds: 2000), () {
        setState(() {
          _isExpanded = !_isExpanded;
          _width = _width == 280 ? 280 : 280;
          _height = _height == 470 ? 540 : 470;
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
            const SizedBox(height: 20),
            Column(
              children: <Widget>[
                Center(
                  child: error(),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: contrasena(),
                )
              ],
            ),
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
                          amor();
                        } else {
                          _showErrorContrasena();
                          _Sizebox();
                        }
                      } else {
                        setState(() {
                          _showErrorMessage();
                          _Sizebox();
                        });
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
                    fontSize: 15,
                    fontFamily: AutofillHints.creditCardFamilyName,
                  ),
                ),
                Icon(
                  Icons.error_rounded,
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

  Widget contrasena() {
    if (_Errorcontra) {
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
                  'CONTRASEÑA NO COINCIDE',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                    fontFamily: AutofillHints.creditCardFamilyName,
                  ),
                ),
                Icon(
                  Icons.error_rounded,
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

  Widget amor() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                    'Te quiero con todo mi corazon y quiro estar y tener todo con usted en mi vida '),
                ElevatedButton(
                  child: Text('Cerrar'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
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
