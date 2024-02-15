import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Image Widget"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          color: Colors.orange,
          // child: const Image(
          //   // image: AssetImage("images/image.png"),
          //   image: NetworkImage("https://picsum.photos/200/350"),
          //   fit: BoxFit.contain,
          // ),
          // child: Image.asset("images/image.png", fit: BoxFit.cover),
          child: Image.network(
            "https://picsum.photos/200/350",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
