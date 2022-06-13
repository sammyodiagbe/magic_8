import 'dart:math';

import "package:flutter/material.dart";

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic 8',
      home: Magic8(),
      theme: ThemeData(
        primaryColor: Colors.amber,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          elevation: 1,
        ),
      ),
    );
  }
}

class Magic8 extends StatefulWidget {
  const Magic8({Key? key}) : super(key: key);

  @override
  State<Magic8> createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  var rand = Random();
  int _answer = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _answer = rand.nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Ask me anything.'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _answer = rand.nextInt(5) + 1;
            });
          },
          child: Image(
            image: AssetImage('images/ball$_answer.png'),
            width: 400,
          ),
        ),
      ),
    );
  }
}
