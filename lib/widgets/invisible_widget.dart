import 'package:flutter/material.dart';

class InvisibleWidget extends StatelessWidget {
  const InvisibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invisible Widget"),
        backgroundColor: Colors.pink,
      ),
      body: Stack(
        // kalo stack gaada axis-alignment.
        // mainAxisAlignment: MainAxisAlignment.center, // constraint kiri kanan
        // crossAxisAlignment: CrossAxisAlignment.end, // constraint atas bawah
        children: [
          Container(
            height: 200,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 175,
            width: 75,
            color: Colors.red,
          ),
          Container(
            height: 150,
            width: 50,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
