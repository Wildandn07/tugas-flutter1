import 'package:flutter/material.dart';

class DesainHalamanProfil extends StatelessWidget {
  const DesainHalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title: Text('form halaman profil'),
      ),
      body: Center(
        child: Text('ini adalah halaman profil'),
      ),
    );
  }
}