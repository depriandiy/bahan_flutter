import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget"),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.lightBlue,
      body: const Center(
        child: Text(
          "Hello, Depri Andiyanto. Saya lulusan baru dari Universitas Surabaya",
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
            backgroundColor: Colors.yellow,
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
