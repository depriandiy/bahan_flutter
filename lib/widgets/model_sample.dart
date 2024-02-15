import 'dart:math';

import 'package:coba_lagi/models/product.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class SampleModel extends StatelessWidget {
  SampleModel({super.key});
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> datas = List.generate(50, (index) {
      return Product(
        id: "",
        title: faker.food.restaurant(),
        imageUrl: "https://picsum.photos/id/$index/300",
        price: Random().nextInt(75000).toDouble(),
        desc: faker.lorem.sentence(),
        isFavorite: false,
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Model Sample"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            header: Text(
              datas[index].title!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
            footer: Container(
              alignment: Alignment.center,
              color: Colors.red.withOpacity(0.6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Rp. ${datas[index].price}",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    datas[index].desc!,
                    style: const TextStyle(
                      color: Colors.yellow,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            child: Image.network(datas[index].imageUrl!),
          );
        },
        itemCount: datas.length,
      ),
    );
  }
}
