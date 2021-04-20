import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading.copyWith(fontSize: 20),
          ),
          SizedBox(height: 24),
          AwnserWidget(
            isRight: false,
            isSelected: true,
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
          ),
          AwnserWidget(
            isRight: false,
            isSelected: false,
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
          ),
          AwnserWidget(
            isRight: true,
            isSelected: true,
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
          ),
          AwnserWidget(
            isRight: false,
            isSelected: false,
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
          ),
          SizedBox(height: 80),
          Expanded(
              child: Text(
            "#embuscadoproximonivel",
            style: AppTextStyles.heading40
                .copyWith(fontSize: 30, color: Colors.green),
          ))
        ],
      ),
    );
  }
}
