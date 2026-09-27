import 'package:flutter/material.dart';
import 'package:flutter_journey/features/contacts/contacts_screen.dart';
import 'package:flutter_journey/features/settings/settings_screen.dart';
// import 'package:flutter_journey/features/settings/settings_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Abdul's Flutter Journey",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ContactScreen(),
    );
  }
}
