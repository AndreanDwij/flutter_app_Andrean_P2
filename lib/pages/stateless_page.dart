import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman ini tidak berubah"),

            Icon(Icons.info),

            Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey,
              child: Text("Informasi"),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text("halo"),
            ),

            Image.network(
              "https://via.placeholder.com/100",
            ),
          ],
        ),
      ),
    );
  }
}