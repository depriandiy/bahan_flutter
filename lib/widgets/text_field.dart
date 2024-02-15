import 'package:flutter/material.dart';

class FiturTextFields extends StatelessWidget {
  const FiturTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitur Text Field"),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            autocorrect: true,
            autofocus: false,
            enableSuggestions: true,
            enableInteractiveSelection: true, // bisa jadi gabisa copas.
            obscureText: false, // untuk password, jadi ****
            keyboardType: TextInputType.phone, // format input text.
            showCursor: true,
            cursorColor: Colors.pink,
            cursorWidth: 10,
            cursorHeight: 25,
            cursorRadius: Radius.circular(20),
            textAlign: TextAlign.start,
            textCapitalization: TextCapitalization.words,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
            // TextFields Decoration
            decoration: InputDecoration(
              fillColor: Colors.amber,
              filled: true,
              icon: Icon(
                Icons.person,
                size: 35,
              ),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.person,
                size: 35,
              ),
              prefixText: "Name: ",
              suffixIcon: Icon(
                Icons.remove_red_eye,
                size: 35,
              ),
              hintText: "Input your name..",
              labelText: "Full Name",
            ),
          ),
        ),
      ),
    );
  }
}
