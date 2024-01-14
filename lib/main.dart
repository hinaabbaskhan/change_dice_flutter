import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          // first dice widget
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: () {
                  print('I am second dice');

                  setState(() {
                    firstDiceNumber = Random().nextInt(6) + 1; //(0----5)+1
                    secondDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$firstDiceNumber.png'),
                ),
              ),
            ),
          ),

          // second dice widget
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: () {
                  print('I am second dice');

                  setState(() {
                    firstDiceNumber = Random().nextInt(6) + 1; //(0----5)+1
                    secondDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$secondDiceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
