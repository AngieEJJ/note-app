import 'package:note_app/domain/repository/note_repository.dart';

import '../model/note.dart';

class UpdateNote {
  final NoteRepository repository;

  UpdateNote(this.repository);

  Future<void> call(Note note) async{
    await repository.updateNote(note);
  }
}