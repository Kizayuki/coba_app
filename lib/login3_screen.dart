import 'package:flutter/material.dart';

class Login3 extends StatefulWidget {
  const Login3({super.key});

  @override
  State<Login3> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  bool passwordHide = true;
  showPassword() {
    setState(() {
      passwordHide = !passwordHide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Halaman Login"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Username",
              hintText: "Enter Your Username",
              prefixIcon: Icon(Icons.email, color: Colors.blue),
            ),
          ),
          TextField(
            obscureText: passwordHide,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter Your Password",
              prefixIcon: Icon(Icons.lock, color: Colors.blue),
              suffixIcon: TextButton(
                onPressed: showPassword,
                child:
                    passwordHide
                        ? Icon(Icons.visibility_off, color: Colors.red)
                        : Icon(Icons.visibility, color: Colors.green),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showPassword();
            },
            child: Text("Show Password"),
          ),
        ],
      ),
    );
  }
}
