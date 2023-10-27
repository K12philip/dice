import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;

void changeDiceNumeber (){ 
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(5)+1;

}



  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(

                  child: TextButton(onPressed: () {
                    setState(() {
                     changeDiceNumeber();
                    });
                  },child: Image.asset('images/dice$leftDiceNumber.png'),),),
    
              Expanded(
                  child: TextButton(onPressed: () {
                    setState(() {
                      changeDiceNumeber();
                    });
                  }, child: Image.asset('images/dice$rightDiceNumber.png')),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

