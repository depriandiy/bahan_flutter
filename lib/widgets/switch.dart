import 'package:flutter/material.dart';

class BelajarSwitch extends StatefulWidget {
  const BelajarSwitch({super.key});
  static const routeName = '/switch';

  @override
  State<BelajarSwitch> createState() => _BelajarSwitchState();
}

class _BelajarSwitchState extends State<BelajarSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              width: 500,
              height: 100,
              child: Switch(
                activeColor: Colors.indigo,
                inactiveThumbColor: Colors.indigo,
                inactiveTrackColor: Colors.amber,
                // activeThumbImage: "images/image.png",
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = !isSwitched;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            Text(
              (isSwitched == true) ? "Switch On" : "Switch Off",
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
