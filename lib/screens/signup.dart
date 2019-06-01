import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
      TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,color: Colors.black);

      @override
      Widget build(BuildContext context) {
                return Scaffold(
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(36.0),
                child: ListView(
          children: <Widget>[
          
            TextField(
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "User Name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        ),
        SizedBox(
          height: 30.0,
          width: 20.0,
        ),
        TextField(
          style: style,
          
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email Id",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        ),
        SizedBox(
          height: 30.0,
          width: 20.0,
        ),
        TextField(
          obscureText: true,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "PassWord",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                  
        ),
        SizedBox(
          height: 30.0,
          width: 20.0,
        ),
         Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Text("SignUp",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),

          ],
        ),
              
              ),
            ),
          ),
        );
      }
    }