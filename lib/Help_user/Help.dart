// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
          decoration: BoxDecoration(
          color: const Color.fromARGB(255, 253, 253, 253), // Color de fondo
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Color.fromARGB(255, 51, 243, 33), // Color del borde
            width: 1, // Grosor del borde
          ),
        ),
        child: Scaffold(
          body: Center(
            child: botones(context),
          ),
        ),
      // Color de fondo del Scaffold
      
      ),
    );
  }

  Widget botones(context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: const Color.fromARGB(255, 215, 252, 10), width: 0.5),
              image: const DecorationImage(
                  image: AssetImage("imagenes/manual.gif"),
                  fit: BoxFit
                      .contain // Puedes ajustar esto para mantener la relación de aspecto

                  ),
            ),
          ),
          const SizedBox(height: 20),
          Tooltip(
            message: 'Manual cultivo',
            child: Container(
              width: 110,
              height: 112,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: const Color.fromARGB(255, 38, 250, 162), width: 0.2),
                image: const DecorationImage(
                    image: AssetImage("imagenes/tower.jpg"),
                    fit: BoxFit
                        .contain // Puedes ajustar esto para mantener la relación de aspecto
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
                              title: const Center(
                                  child: Text("Manuel de cultivo")),
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
                                  Text(
                                      '• Trasplanta las plántulas al sistema.'),
                                  SizedBox(height: 16),
                                  Text(
                                    'Nutrición',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                      '• Prepara y usa una solución nutritiva.'),
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
                                  Text(
                                      '• Inspecciona las plantas diariamente.'),
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
          ),
          const SizedBox(height: 20),
          Tooltip(
            message: 'Manual APP',
            child: Container(
              width: 110,
              height: 112,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: const Color.fromARGB(255, 38, 225, 250), width: 0.2),
                image: const DecorationImage(
                    image: AssetImage("imagenes/app.png"),
                    fit: BoxFit
                        .contain // Puedes ajustar esto para mantener la relación de aspecto
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
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 230,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: const Color.fromARGB(255, 120, 240, 109), width: 0.2),
              image: const DecorationImage(
                  image: AssetImage("imagenes/uceva.png"),
                  fit: BoxFit
                      .contain // Puedes ajustar esto para mantener la relación de aspecto
                  ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
