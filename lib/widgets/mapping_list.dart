import 'package:flutter/material.dart';

class BelajarMappingList extends StatelessWidget {
  BelajarMappingList({super.key});
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Depri Andiyanto",
      "Age": "22",
      "favColor": [
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
      ],
    },
    {
      "Name": "Depri Andiyanto",
      "Age": "22",
      "favColor": [
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
      ],
    },
    {
      "Name": "Depri Andiyanto",
      "Age": "22",
      "favColor": [
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
      ],
    },
    {
      "Name": "Depri Andiyanto",
      "Age": "22",
      "favColor": [
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
      ],
    },
    {
      "Name": "Depri Andiyanto",
      "Age": "22",
      "favColor": [
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
      ],
    },
    {
      "Name": "Depri Andiyanto",
      "Age": "22",
      "favColor": [
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
        "Yellow",
        "Black",
        "Red",
      ],
    },
    {
      "Name": "Samuel Halim",
      "Age": "23",
      "favColor": ["Purple", "Blue", "Green"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mapping List"),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: myList.map((data) {
          List myFavColor = data['favColor'];
          return Card(
            color: Colors.green.withOpacity(0.7),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name: ${data['Name']}",
                            style: const TextStyle(color: Colors.amber),
                          ),
                          Text(
                            "Age : ${data['Age']}",
                            style: const TextStyle(color: Colors.amber),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myFavColor.map((color) {
                        return Container(
                          color: Colors.deepPurple,
                          margin: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 5,
                          ),
                          child: Text(color),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
