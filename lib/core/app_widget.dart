import 'package:DevQuiz/challeng/challeng_page.dart';
import 'package:DevQuiz/home/home_page.dart';
import 'package:DevQuiz/splash/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  Widget home = SplashPage();

  @override
  void initState() {
    FirebaseAuth.instance.userChanges().listen((user) {
      if (user == null) {
        print('User is currently signed out!');
        setState(() {
          home = SplashPage();
        });
      } else {
        print('User is signed in!');
        setState(() {
          home = HomePage();
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dev Quiz",
      home: home,
    );
  }
}
