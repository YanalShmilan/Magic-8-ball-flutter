import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Magic 8 ball"),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              "Ask me a question:",
              style: TextStyle(fontSize: 24),
            ),
          ),
          FlatButton(
            onPressed: () => {
              setState(() => {ballNum = Random().nextInt(5) + 1})
            },
            child: Image.asset('images/ball$ballNum.png'),
          ),
        ],
      ),
    );
  }
}
