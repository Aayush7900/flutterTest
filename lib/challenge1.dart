import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          title: Text('Ask me anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: _8ball(),
      ),
    ),
  );
}

class _8ball extends StatefulWidget {
  @override
  State<_8ball> createState() => __8ballState();
}

class __8ballState extends State<_8ball> {
  int ballno = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballno = Random().nextInt(5) + 1;
          });
        },
        child: Image(
          image: AssetImage('assets/images/ball$ballno.png'),
        ),
      ),
    );
  }
}
