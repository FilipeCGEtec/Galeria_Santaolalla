// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:js_interop';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeria Santaolalla',
      darkTheme: ThemeData(
        useMaterial3: true, 
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(75, 75, 75, 1)),
      ),
      themeMode: ThemeMode.dark,
      home: const Musico(title: 'Página Principal'),
    );
    
  }
}

class Musico extends StatefulWidget {
  const Musico({super.key, required this.title});

  final String title;

  @override
  State<Musico> createState() => _MusicoState();
}

class _MusicoState extends State<Musico> {
  //int _counter = 0;

  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(172, 0, 0, 0),
        title: Text(widget.title, style: const TextStyle(color: Colors.white, fontSize: 30),),
      ),
      backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Text('Botão')
                  ),

                  ElevatedButton(
                    onPressed: () {}, 
                    child: Text('Botão 2')
                  )
                ]
              )
            ),

            SizedBox(
              child: Text(
                "Texto de Biografia",
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            )
            
          ],
        )
      ),

    );
  }
}