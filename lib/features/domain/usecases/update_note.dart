import 'package:isj2_android_flutter/core/usecases/usecases.dart';
import 'package:isj2_android_flutter/features/domain/entities/note.dart';
import 'package:isj2_android_flutter/features/domain/repositories/note_repository.dart';

class UpdateNote implements UseCase<void, UpdateNoteParams> {
  final NotesRepository repository;

  UpdateNote(this.repository);

  @override
  Future<void> call(UpdateNoteParams params) async {
    await repository.updateNote(params.note);
  }
}

class UpdateNoteParams {
  final Note note;

  UpdateNoteParams({required this.note});
}