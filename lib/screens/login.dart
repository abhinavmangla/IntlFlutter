import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:flutter_app/screens/homescreen.dart';

class loginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}


class _LoginPageState extends State<loginPage> {

  String _email;
  String _pass;

  TextEditingController econtrol = TextEditingController();
  TextEditingController pcontrol = TextEditingController();


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: Container(
        margin: EdgeInsets.all(2.0),
        padding: EdgeInsets.all(4.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              //add picture here
              TextFormField(
                controller: econtrol,
                validator: (email) {
                  if(email.isEmpty) return 'Please provide an email';
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Email here',
                ),
                onSaved: (email) => _email = email,
              ),

              SizedBox(height: 5.0),
              TextFormField(
                controller: pcontrol,
                validator: (pass) {
                  if(pass.isEmpty) return "Please enter an email";
                  if(pass.length < 6) return "Provide a longer password";
                },
                decoration: InputDecoration(
                  hintText: 'Enter Password here',
                  labelText: 'Password',
              ),
                obscureText: true,
                onSaved: (value) => _pass = value,
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      pcontrol.clear();
                      econtrol.clear();
                    },
                  ),
                  RaisedButton(
                    child: Text('Sign in'),
                    onPressed: _signin,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _signin() async{
    if(_formKey.currentState.validate()) {
      _formKey.currentState.save();
      FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _pass);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    }
  }
}