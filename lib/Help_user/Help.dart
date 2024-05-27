// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(
            255, 253, 253, 253), // Color de fondo del Scaffold
        body: Center(
          child: botones(context),
        ),
      ),
    );
  }

  Widget botones(context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagenes/manual.gif"),
                fit: BoxFit
                    .contain, // Puedes ajustar esto para mantener la relación de aspecto
              ),
            ),
            /*   child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 8,
                right: 8,
                child: Text(
                  'MANUAL',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ],
          ),*/
          ),
          const SizedBox(height: 20),
          Container(
            width: 180,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagenes/manualcultivo.png"),
                fit: BoxFit
                    .cover, // Puedes ajustar esto para mantener la relación de aspecto
              ),
            ),
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Center(
                        child: SingleChildScrollView(
                          child: AlertDialog(
                            title:
                                const Center(child: Text("Manuel de cultivo")),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Preparación',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text('• Monta el sistema aeropónico.'),
                                Text(
                                    '• Consigue semillas o plántulas adecuadas.'),
                                SizedBox(height: 16),
                                Text(
                                  'Plantación',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text('• Germina las semillas.'),
                                Text('• Trasplanta las plántulas al sistema.'),
                                SizedBox(height: 16),
                                Text(
                                  'Nutrición',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text('• Prepara y usa una solución nutritiva.'),
                                Text('• Nebuliza las raíces regularmente.'),
                                SizedBox(height: 16),
                                Text(
                                  'Luz',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                    '• Asegura suficiente luz natural o utiliza luces de crecimiento LED.'),
                                SizedBox(height: 16),
                                Text(
                                  'Mantenimiento',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text('• Inspecciona las plantas diariamente.'),
                                SizedBox(height: 16),
                                Text(
                                  'Control del Ambiente',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                    '• Mantén la temperatura y humedad adecuadas.'),
                                Text(
                                    '• Asegura una buena circulación de aire.'),
                                SizedBox(height: 16),
                                Text(
                                  'Cosecha',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                    '• Cosecha cuando las plantas están maduras.'),
                                Text(
                                    '• Limpia y prepara el sistema para el siguiente cultivo.'),
                              ],
                            ),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Salir'),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 180,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagenes/manualapp.png"),
                fit: BoxFit
                    .cover, // Puedes ajustar esto para mantener la relación de aspecto
              ),
            ),
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Center(
                        child: SingleChildScrollView(
                          child: AlertDialog(
                            title: const Center(child: Text("Manual APP")),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Inicio de Sesión / Registro:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Iniciar sesión:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Si ya tienes una cuenta, ingresa tu correo electrónico y contraseña para acceder.'),
                                SizedBox(height: 8),
                                Text(
                                  'Registrarse:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Si eres nuevo, crea una cuenta ingresando tu nombre, correo electrónico y contraseña.'),
                                SizedBox(height: 16),
                                Text(
                                  'Pantalla Principal:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Sensores y Valores:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'En esta sección, verás una lista de sensores utilizados en tu cultivo junto con sus valores actuales. Esto incluye información como temperatura, humedad.',
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Tipos de plantas:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'En la segunda sección, encontrarás una lista de diferentes tipos de plantas que puedes cultivar. Cada planta tendrá información detallada.',
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Manual de Ayuda:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'La tercera sección es un manual de ayuda que proporciona información detallada sobre el uso de la aplicación.',
                                ),
                              ],
                            ),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Salir'),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 140,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagenes/tower.jpg"),
                fit: BoxFit
                    .contain, // Puedes ajustar esto para mantener la relación de aspecto
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
