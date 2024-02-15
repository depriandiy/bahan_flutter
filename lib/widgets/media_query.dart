import 'package:flutter/material.dart';

class BelajarMediaQuery extends StatelessWidget {
  BelajarMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(
      title: Text("Media Query"),
      backgroundColor: Colors.blue,
    );
    final highMediaQ = MediaQuery.of(context).size.height;
    final paddingTopApp = MediaQuery.of(context).padding.top;
    final bodyHeight =
        highMediaQ - myAppBar.preferredSize.height - paddingTopApp;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandscape)
            ? Column(
                children: [
                  Container(
                    color: Colors.amber,
                    height: bodyHeight * 0.3,
                  ),
                  Container(
                    color: Colors.purple,
                    height: bodyHeight * 0.7,
                  ),
                ],
              )
            : Column(
                children: [
                  Container(
                    color: Colors.amber,
                    height: bodyHeight * 0.5,
                  ),
                  Container(
                    color: Colors.purple,
                    height: bodyHeight * 0.5,
                  ),
                ],
              ),
      ),
    );
  }
}
