import 'package:isj2_android_flutter/core/usecases/usecases.dart';
import 'package:isj2_android_flutter/features/domain/entities/note.dart';
import 'package:isj2_android_flutter/features/domain/repositories/note_repository.dart';

class GetNotes implements UseCase<List<Note>, String> {
  final NotesRepository repository;

  GetNotes(this.repository);

  @override
  Future<List<Note>> call(String userId) async {
    return await repository.getNotes(userId);
  }
}