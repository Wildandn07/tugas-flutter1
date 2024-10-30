import 'package:flutter/material.dart';
import 'package:flutter_tugas_1/halamanutama.dart';

class DesainHalamanLogin extends StatefulWidget {
  const DesainHalamanLogin({super.key});

  @override
  State<DesainHalamanLogin> createState() => _DesainHalamanLoginState();
}

class _DesainHalamanLoginState extends State<DesainHalamanLogin> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Form(
      key: formkey,
      child: Center(
        child: Container(
          width: 280, height: 250,
          child: Card(
            elevation: 10,
            shadowColor: Colors.red,
            color: const Color.fromARGB(255, 182, 197, 182),
            child: Container(
              padding: const EdgeInsets.all(10) ,
              child: Column(
                children: [
                  TextFormField(
                    controller: cUser,
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      hintText: 'input user name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width : 1),
                        borderRadius: BorderRadius.circular(20),
                      )
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'User Masih Kosong';
                      }return null;
                    },
                  ),
                  const SizedBox(height: 10),
                   TextFormField(
                    obscureText: true,
                    controller: cPass,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'input Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width : 1),
                        borderRadius: BorderRadius.circular(20),
                      )
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Password Masih Kosong';
                      }return null;
                    },
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: (){
                      String tUser = 'admin';
                      String tPass = '12345';
                      if(formkey.currentState!.validate()){
                        if (cUser.text == tUser && cPass.text == tPass){
                          // perintah untuk memanggil halaman baru
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const DesainHalamanUtama(),), (route) => false);
                        }else{
                          showDialog(
                            context: context, 
                            builder: (context){
                              return AlertDialog(
                                title: Text('Konfirmasi Login'),
                                content: Text('User atau Password masih salah'),
                                actions: [
                                  ElevatedButton(
                                  onPressed: (){
                                    cUser.text='';
                                    cPass.text='';
                                    Navigator.of(context).pop();
                                  }, 
                                  child: Text('ok'),
                                  )
                                ],
                              );
                            }
                            );
                        }
                      }
                    }, 
                    child: Text('LOGIN')
                    )

                ], 
              ),
            ),
          ),
        ),
      )
      ),
    );
  }
}