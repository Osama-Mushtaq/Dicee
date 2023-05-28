import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          centerTitle: true,
          title: const Text('Dicee'),
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftbuttnum = 2;
  int rightbuttnum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  right: 5,
                  bottom: 10,
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftbuttnum = Random().nextInt(6) + 1;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[800],
                  ),
                  child: Image.asset('images/dice$leftbuttnum.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      rightbuttnum = Random().nextInt(6) + 1;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[800],
                  ),
                  child: Image.asset('images/dice$rightbuttnum.png'),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 50,
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              setState(
                () {
                  leftbuttnum = Random().nextInt(6) + 1;
                  rightbuttnum = Random().nextInt(6) + 1;
                },
              );
            },
            child: const Text(
              'Throw',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
