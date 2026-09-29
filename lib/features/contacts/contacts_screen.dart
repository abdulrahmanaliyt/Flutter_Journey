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
        child: Column(
          children: [
            // Top Row of Contacts
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CircleAvatar(radius: 45.0, child: Text("A")),
                      SizedBox(height: 10.0),
                      Text(
                        "Abdul-01",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CircleAvatar(radius: 45.0, child: Text("B")),
                      SizedBox(height: 10.0),
                      Text(
                        "Abdul-02",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CircleAvatar(radius: 45.0, child: Text("C")),
                      SizedBox(height: 10.0),
                      Text(
                        "Abdul-03",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CircleAvatar(radius: 45.0, child: Text("D")),
                      SizedBox(height: 10.0),
                      Text(
                        "Abdul-04",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30.0),

            // Stack containing layered Text widgets
            Stack(
              children: [
                Image.network(
                  "https://miro.medium.com/v2/resize:fit:1100/format:webp/1*jQxTA5Zf0Jqzlw-F-nis3A.png",
                  height: 100,
                  width: 200,
                ),
              ],
            ),

            Icon(Icons.account_balance, size: 80),

            const SizedBox(height: 20.0),

            // Action Buttons
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
              child: const Text("Go to SettingsScreen"),
            ),

            IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),

            TextField(decoration: InputDecoration(hintText: "Enter your name")),

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back"),
            ),

          ],
        ),
      ),
    );
  }
}
