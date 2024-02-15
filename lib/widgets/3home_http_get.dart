import 'dart:math';

import 'package:coba_lagi/models/http_get.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HttpGetHome extends StatefulWidget {
  const HttpGetHome({super.key});

  @override
  State<HttpGetHome> createState() => _HttpGetHomeState();
}

class _HttpGetHomeState extends State<HttpGetHome> {
  HttpGet dataResp = HttpGet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP GET - STATEFUL"),
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
                child: Image.network(
                  (dataResp.avatar == null)
                      ? "https://www.uclg-planning.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg?itok=PANMBJF-"
                      : dataResp.avatar!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            FittedBox(
              child: Text(
                (dataResp.id == null)
                    ? "ID : Belum ada data"
                    : "ID : ${dataResp.id!}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResp.fullname == null)
                    ? "Belum ada data"
                    : (dataResp.fullname!),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Email : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResp.email == null) ? "Belum ada data" : (dataResp.email!),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                HttpGet.connectAPI((1 + Random().nextInt(10)).toString())
                    .then((value) {
                  setState(() {
                    dataResp = value;
                  });
                });
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
    );
  }
}
