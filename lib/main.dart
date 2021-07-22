import 'package:action_learning/screens/launcher.dart';
import 'package:flutter/material.dart';

// import 'screens/region_map.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.pink[400],
        accentColor: Colors.pink[200],
      ),
      home: SplashScreen(),
    );
  }
}
