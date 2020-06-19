import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main(){
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.yellow[900]),
    home: Home(),));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login',style: TextStyle(fontSize: 20,color: Colors.white,letterSpacing: 1.2),),centerTitle: true,),
      body: LoginBody(),
      
    );
  }
}