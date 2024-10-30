import 'package:flutter/material.dart';

class DesainHalamanPengaturan extends StatelessWidget {
  const DesainHalamanPengaturan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title: Text('form halaman pengaturan'),
      ),
      body: Center(
        child: Text('ini adalah halaman pengaturan'),
      ),
    );
  }
}