import 'package:coba_aps/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback toggleTheme;

  const SplashScreen({super.key, required this.toggleTheme});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      final box = GetStorage();
      final statusUsername = box.read('username');

      if (statusUsername == null) {
        Get.off(() => Login());
      } else {
        Get.off(() => HomeScreen(toggleTheme: widget.toggleTheme));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Coba App"),
            SizedBox(height: 10),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
