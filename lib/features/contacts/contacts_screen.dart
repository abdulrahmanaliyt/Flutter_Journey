import 'package:flutter/material.dart';
import 'package:flutter_journey/features/settings/settings_screen.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact page'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(radius: 45.0, child: Text("A")),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Abdul-01",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(radius: 45.0, child: Text("B")),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Abdul-02",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(radius: 45.0, child: Text("C")),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Abdul-03",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(radius: 45.0, child: Text("D")),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Abdul-04",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SettingsScreen();
                          },
                        ),
                      );
                    },
                    child: Text("Go to SettingsScreen"),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
