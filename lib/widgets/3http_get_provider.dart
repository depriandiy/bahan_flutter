import 'dart:math';

import 'package:coba_lagi/providers/3http_get.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HttpGetHomeProvider extends StatelessWidget {
  const HttpGetHomeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HttpGetProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP GET - PROVIDER"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Consumer<HttpGetProvider>(
                  builder: (context, value, child) => Image.network(
                    (value.data["avatar"] == null)
                        ? "https://www.uclg-planning.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg?itok=PANMBJF-"
                        : (value.data["avatar"]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            FittedBox(
              child: Consumer<HttpGetProvider>(
                builder: (context, value, child) => Text(
                  (value.data["id"] == null)
                      ? "ID : Belum ada data"
                      : "ID : ${value.data["id"]}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Fullname : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HttpGetProvider>(
                builder: (context, value, child) => Text(
                  (value.data["first_name"] == null ||
                          value.data["last_name"] == null)
                      ? "Belum ada data"
                      : (value.data["first_name"] +
                          " " +
                          value.data["last_name"]),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Email : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HttpGetProvider>(
                builder: (context, value, child) => Text(
                  (value.data["email"] == null)
                      ? "Belum ada data"
                      : (value.data["email"]),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                dataProvider.connectAPI(
                  (1 + Random().nextInt(10)).toString(),
                  context,
                );
              },
              child: const Text(
                "GET DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dataProvider.deleteData(context);
        },
        child: const Icon(Icons.delete),
      ),
    );
  }
}
