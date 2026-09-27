import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const new({super.key});

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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data++;
          print(data);
          setState(() {});
        },
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
              Text(
                data.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "You are on the Settings Page",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
