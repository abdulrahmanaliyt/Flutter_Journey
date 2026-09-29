import 'package:flutter/material.dart';
import 'package:flutter_journey/features/contacts/contacts_screen.dart';
import 'package:flutter_journey/features/feed/feed_screen.dart';
import 'package:flutter_journey/features/settings/settings_screen.dart';
import 'package:flutter_journey/features/card/card_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More About Navigation'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent.shade100,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Contact Screen Navigation
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactScreen(),
                    ),
                  );
                },
                child: const Text("Go to Next ContactsScreen"),
              ),

              const SizedBox(height: 8),

              // Settings Screen Navigation
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                },
                child: const Text("Go to SettingsScreen"),
              ),

              const SizedBox(height: 16),

              // Named Settings Navigation
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settings',
                    arguments: "Abdul Rahman",
                  );
                },
                child: const Text('Named Settings'),
              ),

              const SizedBox(height: 8),

              // Feed Screen Navigation
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FeedScreen()),
                  );
                },
                child: const Text("Go to Feed Screen"),
              ),

              const SizedBox(height: 8),

              // Added: Elevated Button for Card Screen Route
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/card',
                    arguments: "Abdul Rahman",
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Go to Card Screen (/card)'),
              ),

              const SizedBox(height: 32),

              const Text("Hi Hello", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              const Text(
                "I am the last",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
