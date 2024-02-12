import 'package:note_app/domain/model/note.dart';
import 'package:sqflite/sqflite.dart';

class NoteDbHelper  {

  // 하나만 get
  Future<Note?> getNoteById(int id) async {
    var db = await openDatabase('note');
    final List<Map<String, dynamic>> maps = // maps는 json 형태임
        await db.query(
      'note', //테이블명 지정
      where: 'id = ?', //조건 지정: id가 ? 라면
      whereArgs: [id], // ?에 들어갈 값들을 리스트로 매핑
    );

    if (maps.isNotEmpty) {
      return Note.fromJson(maps.first); //하나만 들어있으니까
    }
    return null;
  }

  //모든 리스트 get
  Future<List<Note>> getNotes() async {
    var db = await openDatabase('note');
    final maps = await db.query('note');
    return maps.map((e) => Note.fromJson(e)).toList(); // 리스트니까
  }

  //insert
  Future<void> insertNote(Note note) async {
    var db = await openDatabase('note');
    await db.insert('note', note.toJson());
  }

  //update
  Future<void> updateNote(Note note) async {
    var db = await openDatabase('note');
    await db
        .update('note', note.toJson(), where: 'id = ?', whereArgs: [note.id]);
  }

  //delete
  Future<void> deleteNote(Note note) async {
    var db = await openDatabase('note');
    await db
        .delete('note', where: 'id = ?', whereArgs: [note.id]);
  }
}
