import 'dart:math';

import 'package:flutter/material.dart';

class BelajarStateful extends StatefulWidget {
  const BelajarStateful({super.key});

  @override
  State<BelajarStateful> createState() => _BelajarStatefulState();
}

class _BelajarStatefulState extends State<BelajarStateful> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Stateful"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            counter.toString(),
            style: TextStyle(
              fontSize: 20 + double.parse(counter.toString()),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  if (counter != 1) {
                    setState(() {
                      counter--;
                    });
                  }
                },
                icon: Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
