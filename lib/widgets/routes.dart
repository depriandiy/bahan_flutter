import 'package:coba_lagi/widgets/navigation2.dart';
import 'package:flutter/material.dart';

class BelajarRoutes extends StatelessWidget {
  const BelajarRoutes({super.key});
  static const routeName = '/home'; // inisialisasi untuk cara 2.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Routing"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.red,
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/nav2');
              },
              leading: const Icon(
                Icons.home,
                size: 30,
              ),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('/dialog');
              },
              leading: const Icon(
                Icons.settings,
                size: 30,
              ),
              title: Text("Setting"),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/nav2');
        },
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
