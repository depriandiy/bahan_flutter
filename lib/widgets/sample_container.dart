import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 300,
      color: Colors.purple,
      child: const Text('Selamat Belajar Lagi'),
    );
  }
}
