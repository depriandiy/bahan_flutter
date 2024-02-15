import 'package:coba_lagi/widgets/navigation2.dart';
import 'package:flutter/material.dart';

class BelajarNavigation extends StatelessWidget {
  const BelajarNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Ini Page 1",
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return BelajarNavigation2();
              },
            ),
          );
        },
        child: const Icon(Icons.arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
