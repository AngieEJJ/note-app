import 'package:flutter_test/flutter_test.dart';
import 'package:note_app/data/data_source/note_db_helper.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

//가상의 db인 in-memory 데이터베이스 사용 가능한 라이브러리
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('db test', () async {
    final db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);
    //sql문으로 db 생성
    await db.execute(
        'CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color INTEGER, timestamp INTEGER)');

    final noteDbHelper = NoteDbHelper();


    // insert, getnote 테스트
    await noteDbHelper.insertNote(Note(
      title: 'test',
      content: 'test',
      color: 1,
      timestamp: 1,
    ));
    expect((await noteDbHelper.getNotes()).length, 1);


    //getNoteByID 테스트
    Note note = (await noteDbHelper.getNoteById(1))!;
    expect(note.id, 1);


    //update 테스트
    await noteDbHelper.updateNote(note.copyWith(
        title: 'change'
    ));

    note = (await noteDbHelper.getNoteById(1))!;
    expect(note.title, 'change');


    //delete 테스트
    await noteDbHelper.deleteNote(note);
    expect((await noteDbHelper.getNotes()).length, 0);

        await db.close();
  });
}
