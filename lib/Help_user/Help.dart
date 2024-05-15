// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Help extends StatelessWidget{
  const Help({super.key});
  @override
  Widget build(BuildContext context) {
       return Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 194, 204, 206),
          ),
            child:  SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Message(),
                ],
              ),
          ),
     );
  }
}
// ignore: non_constant_identifier_names
Widget Message(){
  return  Column(
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
          width: 200,
          height: 150,
          decoration: const BoxDecoration(
          color: Color.fromARGB(255, 235, 24, 9),
          ),
          ),
        ],   
      ),
      const SizedBox(height: 25),
      const Column(
        children:<Widget>[
         ElevatedButton(onPressed: null,
          child: Text("Ayuda")),
        ],
      ),
      const SizedBox(height: 25),
      const Column(
        children:<Widget>[
         ElevatedButton(onPressed: null,
          child: Text("Cultivo")),
        ],
      ),
      const SizedBox(height: 25),
      const Column(
        children:<Widget>[
         ElevatedButton(onPressed: null,
          child: Text("App")),
        ],
      ),
    ],
  );
}