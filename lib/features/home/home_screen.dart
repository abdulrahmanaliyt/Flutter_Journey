import 'package:flutter/material.dart';
import 'package:flutter_journey/features/contacts/contacts_screen.dart';
import 'package:flutter_journey/features/settings/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More About Nevigation'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent.shade100,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContactScreen();
                    },
                  ),
                );
              },
              child: Text("Go to Next ContactsScreen"),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
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
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/settings');
            }, child: Text('Named Contacts'))
            
          ],
        ),
      ),
    );
  }
}
