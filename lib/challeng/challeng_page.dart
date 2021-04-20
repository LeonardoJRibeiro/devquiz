import 'package:DevQuiz/challeng/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/challeng/widgets/question_indicator/question_indicator_widget.dart';

class ChallengPage extends StatefulWidget {
  @override
  _ChallengPageState createState() => _ChallengPageState();
}

class _ChallengPageState extends State<ChallengPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: QuizWidget(
        title: "O que o Flutter faz em sua totalidade?",
      ),
    );
  }
}
