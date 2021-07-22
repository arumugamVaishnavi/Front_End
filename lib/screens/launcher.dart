import 'dart:async';
import 'package:action_learning/main.dart';
import 'package:action_learning/models/user.dart';
import 'package:action_learning/screens/authentication.dart';
import 'package:action_learning/screens/signin.dart';
import 'package:action_learning/screens/wrapper.dart';
import 'package:action_learning/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => StreamProvider<User>.value(
            value: AuthService().user,
            child: MaterialApp(
              home: Wrapper(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Fodus',
      home: Container(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xFFFF0833),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 250.0,
                      height: 250.0,
                      child: Image(
                        image: AssetImage('assets/images/logo_transparent.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Welccome to epita\'s cafeteria',
                        style: TextStyle(fontSize: 25.0, color: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
