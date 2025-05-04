import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key, required this.jumlah});

  final int jumlah;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Keranjang')),
      body: Text("Jumlah barang ${widget.jumlah}"),
    );
  }
}
