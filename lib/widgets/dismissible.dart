import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class BelajarDismissible extends StatelessWidget {
  BelajarDismissible({super.key});
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            direction: DismissDirection.endToStart, // atur gesernya.
            onDismissed: (direction) {
              print("Dismissed");
              print(direction);
              if (direction == DismissDirection.endToStart) {
                print("End to Start");
              } else {
                print("Start to End");
              }
            },
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Confirm"),
                    content: const Text("Sure to delete this item?"),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text("No"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text("Yes"),
                      ),
                    ],
                  );
                },
              );
            },
            background: Container(
              color: Colors.red,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.delete,
                size: 25,
              ),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Center(
                  child: Text("${index + 1}"),
                ),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}
