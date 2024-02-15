import 'package:coba_lagi/models/http.dart';
import 'package:flutter/material.dart';

class HomeHTTP extends StatefulWidget {
  const HomeHTTP({super.key});

  @override
  State<HomeHTTP> createState() => _HomeHTTPState();
}

class _HomeHTTPState extends State<HomeHTTP> {
  // 1. HTTP Post using Contstructor
  HttpClass dataResp = HttpClass();

  @override
  Widget build(BuildContext context) {
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
              child: Text(
                (dataResp.id == null)
                    ? "ID: Belum ada data"
                    : "ID: ${dataResp.id}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const FittedBox(
                child: Text("Name: ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResp.name == null) ? "Belum ada data" : "${dataResp.name}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const FittedBox(
                child: Text("Job: ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResp.job == null) ? "Belum ada data" : "${dataResp.job}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const FittedBox(
                child: Text("Created at: ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResp.createdAt == null)
                    ? "Belum ada data"
                    : "${dataResp.createdAt}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            OutlinedButton(
                onPressed: () {
                  HttpClass.connectAPI("Depri Andiyanto", "Flutter Developer")
                      .then(
                    (value) {
                      // print(value.name);
                      setState(() {
                        dataResp = value;
                      });
                    },
                  );
                },
                child: const Text(
                  "POST DATA",
                  style: TextStyle(fontSize: 25),
                )),
          ],
        ),
      ),
    );
  }
}
