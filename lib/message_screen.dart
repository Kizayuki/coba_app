import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Daftar Pesan'),
      ),
      body: Center(
        child: Text("Ini Halaman Pesan", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
