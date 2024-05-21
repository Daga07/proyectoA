// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:proyecto/Sensors/Sensors.dart';

class Help extends StatelessWidget {
  const Help({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Navegación con Botón'),
          ),
          body: Center(
            child: botones(context),
          )),
    );
  }

  Widget botones(context) {
    return Row(
      children: [
        Container(
          child: InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Center(
                      child: AlertDialog(
                        title: Text("TOMATE"),
                        content: Text(
                            "Mayor producción, gran calidad en sus cosechas y una alta calidad nutricional, además no requiere de pesticidas y plaguicidas"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Salir'),
                          )
                        ],
                      ),
                    );
                  }
                  );
              print('Imagen clik');
            },
            child: Image.asset("image_cultivos/tomate.png"),
          ),
        ),
      ],
    );
  }
}
