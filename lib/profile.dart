import 'package:coba_aps/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  final String email;

  const Profile({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Halaman Profil"),
        actions: [
          ElevatedButton(
            onPressed: () {
              final box = GetStorage();
              box.remove('username');
              Get.off(() => Login());
            },
            child: Text("logout"),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
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
            SizedBox(height: 20),
            Text("Username: $email", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
