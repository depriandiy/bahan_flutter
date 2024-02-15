import 'package:coba_lagi/providers/2http_post.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeProviderWidget extends StatelessWidget {
  const HomeProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. HTTP Post using Provider
    final dataProvider = Provider.of<HomeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("POST - HTTP STATEFUL"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Consumer<HomeProvider>(
                builder: (context, value, child) => Text(
                  (value.data["id"] == null)
                      ? "ID: Belum ada data"
                      : "ID: ${value.data["id"]}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const FittedBox(
                child: Text("Name: ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HomeProvider>(
                builder: (context, value, child) => Text(
                  (value.data["name"] == null)
                      ? "Belum ada data"
                      : "${value.data["name"]}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const FittedBox(
                child: Text("Job: ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HomeProvider>(
                builder: (context, value, child) => Text(
                  (value.data["job"] == null)
                      ? "Belum ada data"
                      : "${value.data["job"]}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const FittedBox(
                child: Text("Created at: ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HomeProvider>(
                builder: (context, value, child) => Text(
                  (value.data["createdAt"] == null)
                      ? "Belum ada data"
                      : "${value.data["createdAt"]}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            OutlinedButton(
                onPressed: () {
                  dataProvider.connectAPI("Depri Andiyanto", "Chef");
                },
                child: const Text(
                  "POST DATA",
                  style: TextStyle(fontSize: 25),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.delete),
      ),
    );
  }
}
