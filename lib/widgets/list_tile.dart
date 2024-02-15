import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class BelajarListTile extends StatelessWidget {
  BelajarListTile({super.key});
  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile Widget"),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ChatItem(
            imageUrl: "https://picsum.photos/id/$index/200/300",
            title: faker.person.name(),
            subTitle: faker.lorem.sentence(),
          );
        },
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const ChatItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Text("10:45 AM"),
    );
  }
}
