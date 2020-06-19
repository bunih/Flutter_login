import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    final _width=MediaQuery.of(context).size.width;
    final email = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          hintText: 'email here...'),
    );
    final password = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          hintText: 'password here...'),
    );

    final loginButton = Material(
      color: Colors.yellow[900],
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        minWidth: _width,
        onPressed: (){
          print('login Successfully!');
        },
        child: Text('login'),
      ),
    );
    return ListView(
      children: [
        SizedBox(
            height: 20,
          ),
        Image(
          height: 150,
          image: AssetImage('assets/logo.png'),),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
         child: Column(children: [


            SizedBox(
            height: 20,
          ),
          email,
          SizedBox(
            height: 20,
          ),
          password,
          SizedBox(
            height: 20,
          ),
          loginButton,
         ],),
       )
      ],
    );
  }
}
