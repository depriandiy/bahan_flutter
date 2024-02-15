import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BelajarDateFormat extends StatelessWidget {
  const BelajarDateFormat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Format"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()),
          // DateTime.now().toString(),
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
