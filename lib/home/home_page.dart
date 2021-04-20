import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _signOut,
              child: Text('Sair'),
            ),
          )
        ],
      ),
    );
  }
}
