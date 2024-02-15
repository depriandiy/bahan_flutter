import 'package:coba_lagi/widgets/dialog.dart';
import 'package:flutter/material.dart';

class BelajarNavigation2 extends StatelessWidget {
  const BelajarNavigation2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation"),
        backgroundColor: Colors.amber,
        leading: Container(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Ini Page 2",
              style: TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Back",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return BelajarDialog();
                    // }));
                    Navigator.of(context).pushNamed('/dialog'); // routing
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .pop(); // otomatis kembali ke page yg lakukan push.
        },
        child: const Icon(Icons.arrow_left),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
