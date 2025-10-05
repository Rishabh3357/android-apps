import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text(
                style: TextStyle(
                  color: Colors.white,
                ),
                'Ask Me Anything'),
          ),
          backgroundColor: Colors.blue,
        ),
        body: MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  const MagicPage({super.key});

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballNumber = 1;
  void changeBallFace(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
              changeBallFace();
            },
              child: Image.asset('image/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}