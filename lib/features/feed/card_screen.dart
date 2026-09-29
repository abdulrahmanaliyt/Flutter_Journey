import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Feed'),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white, // Makes the title text white
      ),
      body: Center(
        child: Card(
          elevation: 9,
          shadowColor: Colors.deepOrange,
          // Adds smooth rounded corners to the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          // Added 'const' here for performance optimization
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Text(
              "Abdul",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold, // Makes the text stand out
              ),
            ),
          ),
        ),
      ),
    );
  }
}
