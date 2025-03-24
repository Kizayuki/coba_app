import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Halaman Profil"),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.edit, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
