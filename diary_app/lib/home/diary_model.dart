import 'dart:convert';

class Diary {
  const Diary({
    required this.title,
    this.description,
    required this.isCompleted,
    required this.author,
  });

  final String title;
  final String? description;
  final bool isCompleted;
  final String author;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'author': author,
    };
  }

  factory Diary.fromMap(Map<String, dynamic> map) {
    return Diary(
      title: map['title'] as String,
      description: map['description'] as String?,
      isCompleted: map['isCompleted'] as bool,
      author: map['author'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Diary.fromJson(String source) =>
      Diary.fromMap(json.decode(source) as Map<String, dynamic>);
}
