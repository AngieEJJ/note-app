import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class DeleteNote{
  final NoteRepository repository;

  DeleteNote(this.repository);

  Future<void> call(Note note) async { // 받아오기
    await repository.deleteNote(note); // 전달하기
  }
}