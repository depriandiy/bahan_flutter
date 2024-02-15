import 'package:flutter/material.dart';

class BelajarTabBar extends StatelessWidget {
  BelajarTabBar({super.key});
  List<Tab> myTab = [
    Tab(
      icon: Icon(Icons.home),
      text: "Home",
    ),
    Tab(
      icon: Icon(Icons.history),
      text: "History",
    ),
    Tab(
      icon: Icon(Icons.person),
      text: "Profile",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Tab Bar"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.yellow,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            // indicator: BoxDecoration(
            //   color: Colors.amber,
            //   borderRadius: BorderRadius.circular(10),
            //   border: const Border(
            //     bottom: BorderSide(
            //       color: Colors.white,
            //       width: 5,
            //     ),
            //   ),
            // ),
            tabs: myTab,
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Ini Tab 1")),
            Center(child: Text("Ini Tab 2")),
            Center(child: Text("Ini Tab 3")),
          ],
        ),
      ),
    );
  }
}
