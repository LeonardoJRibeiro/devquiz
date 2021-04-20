import 'package:DevQuiz/core/core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Erro ao se conectar');
        }
        if (snapshot.connectionState == ConnectionState.done) {
          print('conect');
          return AppWidget();
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
