import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  Color warna = Colors.grey;
  String teks = "Belum pilih warna";

  void pilihMerah() {
    setState(() {
      warna = Colors.red;
      teks = "Merah";
    });
  }

  void pilihBiru() {
    setState(() {
      warna = Colors.blue;
      teks = "Biru";
    });
  }

  void pilihHijau() {
    setState(() {
      warna = Colors.green;
      teks = "Hijau";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Warna dipilih: $teks"),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: pilihMerah,
                  child: Text("Merah"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: pilihBiru,
                  child: Text("Biru"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: pilihHijau,
                  child: Text("Hijau"),
                ),
              ],
            ),

            SizedBox(height: 20),

            Container(
              width: 100,
              height: 100,
              color: warna,
            ),

            Icon(Icons.color_lens),
          ],
        ),
      ),
    );
  }
}