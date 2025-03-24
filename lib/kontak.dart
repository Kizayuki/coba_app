import 'package:flutter/material.dart';

class Kontak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Daftar Kontak'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(leading: Icon(Icons.phone), title: Text('Waras')),
          ListTile(leading: Icon(Icons.phone), title: Text('Abdul')),
          ListTile(leading: Icon(Icons.phone), title: Text('Adi')),
          ListTile(leading: Icon(Icons.phone), title: Text('Afiq')),
          ListTile(leading: Icon(Icons.phone), title: Text('Aji')),
          ListTile(leading: Icon(Icons.phone), title: Text('Alfi')),
          ListTile(leading: Icon(Icons.phone), title: Text('Alif')),
          ListTile(leading: Icon(Icons.phone), title: Text('Amanda')),
          ListTile(leading: Icon(Icons.phone), title: Text('Andri')),
          ListTile(leading: Icon(Icons.phone), title: Text('Atik')),
          ListTile(leading: Icon(Icons.phone), title: Text('Arco')),
          ListTile(leading: Icon(Icons.phone), title: Text('Bayu')),
          ListTile(leading: Icon(Icons.phone), title: Text('Claudea')),
          ListTile(leading: Icon(Icons.phone), title: Text('Devan')),
          ListTile(leading: Icon(Icons.phone), title: Text('Febrian')),
          ListTile(leading: Icon(Icons.phone), title: Text('Haffian')),
          ListTile(leading: Icon(Icons.phone), title: Text('Ilham')),
        ],
      ),
    );
  }
}
