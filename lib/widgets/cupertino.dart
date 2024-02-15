import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BelajarCupertino extends StatefulWidget {
  BelajarCupertino({super.key});

  @override
  State<BelajarCupertino> createState() => _BelajarCupertinoState();
}

class _BelajarCupertinoState extends State<BelajarCupertino> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate.toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // showDialog(
                //   context: context,
                //   builder: (context) {
                //     // Platform.isIOS -> apakah IOS atau bukan?
                //     return CupertinoAlertDialog(
                //       title: Text("Delete Item"),
                //       content: Text("Are you sure to delete this item?"),
                //       actions: [
                //         TextButton(
                //           onPressed: () {},
                //           child: Text("Yes"),
                //         ),
                //         TextButton(
                //           onPressed: () {},
                //           child: Text("No"),
                //         ),
                //       ],
                //     );
                //   },
                // );
                // IOS Alert Dialog
                // showCupertinoModalPopup(
                //   context: context,
                //   builder: (context) {
                //     return Container(
                //       color: Colors.white,
                //       height: MediaQuery.of(context).size.height * 0.4,
                //       child: CupertinoDatePicker(
                //         mode: CupertinoDatePickerMode.date,
                //         onDateTimeChanged: (datetime) {
                //           print(datetime);
                //         },
                //         initialDateTime: DateTime.now(),
                //       ),
                //     );
                //   },
                // )
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2040),
                  // initialEntryMode: DatePickerEntryMode.input,
                  // initialDatePickerMode: DatePickerMode.year,
                  selectableDayPredicate: (day) {
                    if ((day.isAfter(
                            DateTime.now().subtract(Duration(days: 5)))) &&
                        (day.isBefore(DateTime.now().add(Duration(days: 2))))) {
                      return true;
                    }
                    return false;
                  },
                  helpText: "Help Text",
                  cancelText: "Cancel Text",
                  confirmText: "Confirm Text",
                  fieldLabelText: "Tanggal Lahir",
                  fieldHintText: "Masukkan tanggal lahir anda",
                  // builder: (context, child) {
                  //   return Theme(
                  //     data: ThemeData.dark(), // dark mode
                  //     child: child,
                  //   );
                  // },
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      selectedDate = value;
                    });
                  }
                });
                // Style cupertino lainnya bisa dilihat di flutter.dev
              },
              child: const Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
