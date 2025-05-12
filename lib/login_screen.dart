import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login3State();
}

class _Login3State extends State<Login> {
  bool passwordHide = true;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void showPassword() {
    setState(() {
      passwordHide = !passwordHide;
    });
  }

  void _login() {
    String username = usernameController.text;
    final box = GetStorage();
    box.write("username", username);
    Get.off(() => HomeScreen(toggleTheme: () {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Halaman Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "Enter Your Username",
                prefixIcon: Icon(Icons.email, color: Colors.blue),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: passwordHide,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter Your Password",
                prefixIcon: Icon(Icons.lock, color: Colors.blue),
                suffixIcon: IconButton(
                  onPressed: showPassword,
                  icon:
                      passwordHide
                          ? Icon(Icons.visibility_off, color: Colors.red)
                          : Icon(Icons.visibility, color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final box = GetStorage();
                box.write("username", usernameController.text);
                _login();
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
