import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/note.dart';

class NoteModel extends Note {
  NoteModel({
    required String id,
    required String title,
    required String content,
    required DateTime createdAt,
    required String userId,
  }) : super(id: id, title: title, content: content, createdAt: createdAt, userId: userId);

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      createdAt: (json['createdAt'] as Timestamp).toDate(),
      userId: json['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'createdAt': createdAt,
      'userId': userId,
    };
  }
}
