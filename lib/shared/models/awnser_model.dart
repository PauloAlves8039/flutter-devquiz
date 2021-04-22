class AwnserModel {
  final String title;
  final bool isRight;

  AwnserModel({required this.title, this.isRight = false});

  factory AwnserModel.fromMap(Map<String, dynamic> map) {
    return AwnserModel(
      title: map['title'] as String,
      isRight: map['isRight'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'isRight': this.isRight,
    };
  }
}
