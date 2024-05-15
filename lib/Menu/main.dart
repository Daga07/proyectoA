// ignore_for_file: non_constant_identifier_names
import 'dart:js';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:proyecto/Login/Log-in.dart';
// ignore: unused_import
import 'package:proyecto/Tab_bars/Tab_bars.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();

    runApp(const Tower());
  }

class Tower extends StatelessWidget {
  const Tower({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
          home:  Menu(),
      ),
    );
  }
}

Widget Menu(){
          return Expanded(
            child: Scaffold(
            appBar: PreferredSize(// Altura personalizada del AppBar
            preferredSize: const Size.fromHeight(20), // Altura personalizada del AppBar
            child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10), // Radio de borde en la parte inferior
              ),
              gradient: LinearGradient(
                colors:[Color.fromARGB(248, 53, 119, 51), Color.fromARGB(167, 160, 61, 122)], // Colores del degradado
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: AppBar(
              backgroundColor: const Color.fromARGB(0, 102, 10, 10), // Hace que el AppBar sea transparente
              elevation: 0, // Elimina la sombra del AppBar
           
            ),  
          ),
        ),
            
          body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 222, 231, 236), // Color de fondo del cuerpo
            borderRadius: BorderRadius.circular(20.0), // Bordes redondeados
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 248, 186).withOpacity(0.3), // Color de sombra
                spreadRadius: 3, // Extensión de la sombra
                blurRadius: 3, // Difuminado de la sombra
                offset: const Offset(0, 1), // Desplazamiento de la sombra
              ),
            ],
          ),
               child:  Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ImganeRadio(),
                      const SizedBox(height: 20),
                      Loge(),
                    ],
                  ),
                ),
             
               ),
             ),
            ),
          ); 
}

Widget ImganeRadio(){
  return Container(
      width: 140,
      height: 110,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color.fromARGB(167, 72, 160, 61),width: 0.1),
      ),
        clipBehavior: Clip.hardEdge,

          child: const Image(
            image:AssetImage("imagenes/towerucev.png"),
            fit: BoxFit.contain
            ),
              
 
  );
}

Widget Loge(){
  return Container(
 
      width: 250,
      height: 300,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: const Color.fromARGB(153, 117, 40, 128),width: 0.2),
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
                        width:50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(0, 255, 255, 255),
                          shape: BoxShape.circle,
                           image: DecorationImage(
                            image: AssetImage(
                            ("imagenes/correo.png"),
                             ), //AssetImage
                              fit: BoxFit.contain
                            ),
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
                        child:   TextField(
                        style: const TextStyle(fontSize: 15),
                        obscureText: false,  
                        decoration: InputDecoration(
                        labelText: 'Correo',
                        hintText: 'Introduce tu Correo', // Texto de muestra cuando el cuadro de texto está vacío
                        contentPadding: const EdgeInsets.all(20),
                        border: OutlineInputBorder( // Borde del campo
                        borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder( // Borde cuando el campo está enfocado
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromARGB(192, 160, 61, 122), width: 2),
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
              children:<Widget> [
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
                              fit: BoxFit.contain
                            ),
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
                        child:   TextField(
                        style: const TextStyle(fontSize: 15),
                        obscureText: true,  
                        decoration: InputDecoration(
                        labelText: 'Contraseña',
                        hintText: 'Introduce tu Contraseña', // Texto de muestra cuando el cuadro de texto está vacío
                        contentPadding: const EdgeInsets.all(20),
                        border: OutlineInputBorder( // Borde del campo
                        borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder( // Borde cuando el campo está enfocado
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromARGB(192, 160, 61, 122), width: 2),
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
                        width: 100,
                        height: 40,
                       child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), // Bordes redondeados
                          ),
                          elevation: 20, // Sombra del botón
                        ),
          onPressed: 
            null,
          child: const Text(
            'Navigate',
            style: TextStyle(fontSize: 18),
          ),
        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                        ),  
                      ),
    
              ],
    
            )
          ],
        ),

  );

}

