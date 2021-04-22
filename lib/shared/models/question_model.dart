import 'package:DevQuiz/shared/models/awnser_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> answer;

  QuestionModel({required this.title, required this.answer})
      : assert(answer.length == 4);

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
        title: map['title'] as String,
        answer: List<AwnserModel>.from(
          map['answers'].map((e) => AwnserModel.fromMap(e)),
        ));
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'answer': this.answer.map((e) => e.toMap()).toList(),
    };
  }
}
