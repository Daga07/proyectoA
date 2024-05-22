// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: botones(context),
      )),
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
            height: 80,
            decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("imagenes/manual.gif"),
                fit: BoxFit
                    .cover, // Puedes ajustar esto para mantener la relación de aspecto
              ))),
          const SizedBox(height: 10),
          Container(
            width: 150,
            height: 40,
            decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("imagenes/manualcultivo.png"),
                fit: BoxFit
                    .cover, // Puedes ajustar esto para mantener la relación de aspecto
              ))),
          const SizedBox(height: 10),
          Container(
              width: 180,
              height: 40,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("imagenes/manualapp.png"),
                fit: BoxFit
                    .cover, // Puedes ajustar esto para mantener la relación de aspecto
              ))),
          const SizedBox(height: 10),
          Container(
            width: 150,
            height: 40,
            decoration: const BoxDecoration(color: Colors.brown),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
