import 'package:flutter/material.dart';

class PenggunaanTextFields extends StatefulWidget {
  PenggunaanTextFields({super.key});

  @override
  State<PenggunaanTextFields> createState() => _PenggunaanTextFieldsState();
}

class _PenggunaanTextFieldsState extends State<PenggunaanTextFields> {
  final TextEditingController myController = TextEditingController();
  String hasil = "Hasil Input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Penggunaan Text Fields"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: myController,
                onChanged: (value) {
                  setState(() {
                    hasil = value;
                  });
                },
                onSubmitted: (value) {
                  print("Submited: " + myController.text);
                  // myController.text isinya mirip dengan value.
                },
                onEditingComplete: () {
                  print("Edit Success");
                },
              ),
              Text(hasil),
            ],
          ),
        ),
      ),
    );
  }
}
