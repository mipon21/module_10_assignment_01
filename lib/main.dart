// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    String url = "https://logowik.com/content/uploads/images/flutter5786.jpg";
    mySnackbar(String message){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(message),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.green,
        )
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello, World!", style: TextStyle(color: Colors.red, fontSize: 20),),
              SizedBox(height: 10,),
              Text("Welcome to Flutter!", style: TextStyle(fontSize: 16),),
              SizedBox(height: 10,),
              Image.network(url,height: 200, width: 200,),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {
                    mySnackbar("Button Pressed!");
                  },
                  child: Text("Press Me", style: TextStyle(color: Colors.black),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

