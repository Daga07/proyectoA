// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Log_in extends StatelessWidget  {
  const Log_in({super.key});
  @override
  Widget build(BuildContext context) {
return SingleChildScrollView(
  child: Container(
        width: 250,
        height: 410,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
        ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: <Widget>[
                  Container(
                    width: 180,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                    ),
                  )

              ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                      children: <Widget>[
                        const SizedBox(height: 10),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                          ),  
                        ),
                      ],
                  ),
                  const SizedBox(width: 10),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 10),
                        Container(
                          width: 180,
                          height: 40,
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
                         const SizedBox(height: 15),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                          ),  
                        ),
                      ],
                  ),
                  const SizedBox(width: 10),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 20),
                        Container(
                          width: 180,
                          height: 40,
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
                         const SizedBox(height: 15),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                          ),  
                        ),
                      ],
                  ),
                  const SizedBox(width: 10),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 20),
                        Container(
                          width: 180,
                          height: 40,
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
                         const SizedBox(height: 15),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                          ),  
                        ),
                      ],
                  ),
                  const SizedBox(width: 10),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 20),
                        Container(
                          width: 180,
                          height: 40,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                          ),  
                        ),
                      ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
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
    ),
);
  }
  
}