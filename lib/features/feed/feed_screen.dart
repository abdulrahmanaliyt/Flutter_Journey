import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Chapter $index"),
            subtitle: Text("Area of Circle"),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          );
        },
      ),
    );
  }
}
