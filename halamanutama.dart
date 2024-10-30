import 'dart:io';

import 'package:flutter/material.dart';

import './halamanprofil.dart';
import './pengaturan.dart';

class DesainHalamanUtama extends StatefulWidget {
  const DesainHalamanUtama({super.key});

  @override
  State<DesainHalamanUtama> createState() => _DesainHalamanUtamaState();
}

class _DesainHalamanUtamaState extends State<DesainHalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
        backgroundColor: Colors.red,

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/banner.jpg'), fit: BoxFit.cover)
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/image).jpg'),
              )
              ),
              ListTile(
                title: const Text('Profil'),
                leading: Icon(Icons.person),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DesainHalamanProfil(),));
                  }, 
                  icon: Icon(Icons.search)
                  ),
              ),
              ListTile(
                title: const Text('pengaturan'),
                leading: Icon(Icons.settings),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DesainHalamanPengaturan(),));
                  }, 
                  icon: Icon(Icons.settings)
                  ),
              ),
               ListTile(
                title: const Text('Keluar'),
                leading: Icon(Icons.close),
                trailing: IconButton(
                  onPressed: (){
                    exit(0);
                  }, 
                  icon: Icon(Icons.exit_to_app)
                  ),
              ),
          ],
        ),
      ),
    );
  }
}