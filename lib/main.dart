import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
          margin: EdgeInsets.all(2.75),
          decoration: BoxDecoration(
            color: Colors.purple[900],
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(
                  0,
                  3,
                ),
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      left: 45, right: 55, top: 41.34, bottom: 29),
                ),
                Image.asset(
                  'assets/images/screen_ilus.jpeg',
                  height: 200,
                ),
                SizedBox(
                  height: 45,
                ),
                Text(
                  'Jot Down anything you want to achieve, today or in the futere',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      color: Colors.yellow,
                      iconSize: 25.0,
                      splashColor: Colors.blue,
                      onPressed: () {},
                      icon: Icon(Icons.circle_sharp),
                    ),
                    IconButton(
                      color: Colors.white70,
                      iconSize: 25.0,
                      splashColor: Colors.blue,
                      onPressed: () {},
                      icon: Icon(Icons.circle_sharp),
                    ),
                    IconButton(
                      color: Colors.white,
                      iconSize: 25.0,
                      splashColor: Colors.blue,
                      onPressed: () {},
                      icon: Icon(Icons.circle_sharp),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(28),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Lets Get Started',
                        style: TextStyle(
                          color: Colors.purple[900],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      IconButton(
                        color: Colors.purple[900],
                        iconSize: 25,
                        splashColor: Colors.blue,
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_rounded),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
