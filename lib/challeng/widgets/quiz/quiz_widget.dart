import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/challeng/widgets/answer/answer_widget.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final title;
  QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
            isRight: true,
            isSelected: true,
          ),
          AnswerWidget(
            isSelected: true,
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
          ),
        ],
      ),
    );
  }
}
