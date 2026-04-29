import 'package:flutter/material.dart';
import 'stateless_page.dart';
import 'stateful_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Stateless"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StatelessPage()),
                );
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text("Stateful"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StatefulPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}