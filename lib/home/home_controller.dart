import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

var _auth = FirebaseAuth.instance;

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  UserModel? user;
  List<QuizModel>? quizzes;
  final repository = HomeRepository();

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  void getUser() async {
    state = HomeState.loading;
    user = UserModel(
      name: (_auth.currentUser!.displayName)!,
      photoURL: (_auth.currentUser!.photoURL)!,
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
