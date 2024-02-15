import 'dart:math';

import 'package:flutter/material.dart';

class BelajarGridView extends StatelessWidget {
  BelajarGridView({super.key});
  final List<Container> myList = List.generate(50, (index) {
    return Container(
      // height: 50,
      // width: 150,
      color: Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
      ),
      // body: GridView(
      //   padding: const EdgeInsets.all(10),
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     childAspectRatio: 3 / 4, // -> lebar / tinggi
      //   ),
      //   children: myList,
      // ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 4,
        children: myList,
      ),
    );
  }
}
