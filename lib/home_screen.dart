import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(backgroundColor: Colors.green, title: Text("Coba")),
      body: Center(
        child: Column(
          children: [
            Text("Halo Bang"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Budi"), Icon(Icons.person)],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.home), Icon(Icons.home), Icon(Icons.home)],
      ),
    );
  }
}
