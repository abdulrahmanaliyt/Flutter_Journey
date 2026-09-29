import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late int data;

  @override
  void initState() {
    super.initState();
    data = 0;
  }

  @override
  void dispose() {
    debugPrint("Hi i am disposed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Safely extract argument with a fallback default
    final args = ModalRoute.of(context)?.settings.arguments;
    final String name = args is String ? args : "Guest User";

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data++;
          debugPrint(data.toString());
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Settings page'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
        elevation: 1,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.red,
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "You are on the Settings Page",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text("Counter: $data", style: const TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
