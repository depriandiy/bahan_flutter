import 'package:flutter/material.dart';

class FlexibleExpand extends StatelessWidget {
  const FlexibleExpand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible and Expanded"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                // expanded itu = flexfit.tight
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: Text("Text 1 - Text panjang"),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1, // flex 1, maka 1 dibagi jumlah widget pada row/column.
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Text("Text 2 - sedikit"),
                ),
              ),
              Flexible(
                fit: FlexFit.tight, // tight akan mengisi size width yg tersisa
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Text("Text 3"),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              color: Colors.blue,
              width: 300,
              height: 110,
              child: const FittedBox(
                // ketika pake fittedbox, elemen/isi dari fittedbox
                // akan di fit kan tanpa ada enter, meskipun sizenya diperkecil.
                child: Text(
                  "Test Fitted Box Anjirrrrrrrrrrrrrr",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
