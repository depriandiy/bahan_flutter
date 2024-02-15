import 'package:flutter/material.dart';

class BelajarLayoutBuilder extends StatelessWidget {
  const BelajarLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final myAppBar = AppBar(
      title: Text("Layout Builder"),
      backgroundColor: Colors.blue,
    );
    final bodyHeight = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthApp,
        height: bodyHeight * 0.5,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(widthApp, bodyHeight),
            MyContainer(widthApp, bodyHeight),
            MyContainer(widthApp, bodyHeight),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;
  final double heightApp;
  MyContainer(this.widthApp, this.heightApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: widthApp * 0.25,
        // height: heightApp * 0.2,
        height: constraints.maxHeight * 0.75,
        color: Colors.amber,
      );
    });
  }
}
