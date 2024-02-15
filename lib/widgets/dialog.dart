import 'package:flutter/material.dart';

class BelajarDialog extends StatefulWidget {
  BelajarDialog({super.key});

  @override
  State<BelajarDialog> createState() => _BelajarDialogState();
}

class _BelajarDialogState extends State<BelajarDialog> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text(data)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Telah diklik");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Confirm"),
                content: Text("Are you sure to delete this item?"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      print("Klik yes");
                      setState(() {
                        data = "True";
                      });
                      Navigator.of(context).pop(true); // disappear dialog.
                    },
                    child: Text("Yes"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Klik no");
                      setState(() {
                        data = "False";
                      });
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No"),
                  ),
                ],
              );
            },
          ).then((value) {
            print(value); // hasilnya dari pop dialog yang diklik.
          });
        },
        child: const Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
