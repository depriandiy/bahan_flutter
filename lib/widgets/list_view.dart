import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {
  ListViewTest({super.key});

  final List<Color> myColor = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.red
  ];

  final List<Widget> myList = List.generate(
    100,
    (index) => Text(
      ("${index + 1}"),
      style: TextStyle(
        fontSize: 20 + double.parse(index.toString()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Widget"),
        backgroundColor: Colors.yellow,
      ),
      // body: ListView.separated(
      //   itemCount: myColor.length,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       height: 300,
      //       width: 300,
      //       color: myColor[index],
      //       child: const Text("Hallo"),
      //     );
      //   },
      //   separatorBuilder: (context, index) {
      //     return const Divider(
      //       color: Colors.white,
      //       height: 5,
      //     );
      //   },
      // ),
      body: ListView(
        children: myList,
      ),
    );
  }
}
