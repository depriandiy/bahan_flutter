import 'package:flutter/material.dart';

class BelajarAppBar extends StatelessWidget {
  const BelajarAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          color: Colors.amber,
          child: const Icon(Icons.add),
        ),
        leadingWidth: 100,
        title: Container(
          color: Colors.yellow,
          width: 1000,
          height: 35,
          child: const Text(
            "App Bar",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          Container(
            width: 50,
            color: Colors.purple,
          ),
          Container(
            width: 50,
            color: Colors.pink,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Container(
            width: 50,
            height: 200,
            color: Colors.green,
          ),
        ),
        flexibleSpace: Container(
          // width: 50, -> width ga berpengaruh.
          height: 200,
          color: Colors.orange,
          child: const Text(
            "*** Ini FSpace ***",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
