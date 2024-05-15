// ignore_for_file: non_constant_identifier_names
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
                colors: [Color.fromARGB(255, 124, 189, 243), Color.fromARGB(255, 133, 240, 137)], // Colores del degradado
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
                      const SizedBox(height: 50),
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
      width: 100,
      height: 100,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
      ),
  );
}

Widget Loge(){
  return Container(
 
      width: 250,
      height: 300,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
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
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                        ),  
                      ),
                    ],
                ),
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 50),
                      Container(
                        width: 180,
                        height: 60,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
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
                       const SizedBox(height: 20),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                        ),  
                      ),
                    ],
                ),
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Container(
                        width: 180,
                        height: 60,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
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
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
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

