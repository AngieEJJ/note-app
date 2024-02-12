import 'package:note_app/data/data_source/note_db_helper.dart';
import 'package:note_app/data/repository/note_repository_impl.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_app/presentation/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  Database database = await openDatabase(
    'note',
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color INTEGER, timestamp INTEGER)');
    },
  );

  NoteDbHelper noteDbHelper = NoteDbHelper();
  NoteRepository noteRepository = NoteRepositoryImpl();
  NotesViewModel notesViewModel = NotesViewModel(NoteRepositoryImpl());
  AddEditNoteViewModel addEditNoteViewModel = AddEditNoteViewModel(NoteRepositoryImpl());

  return [
    ChangeNotifierProvider(create: (_) => NotesViewModel(NoteRepositoryImpl())),
    ChangeNotifierProvider(create: (_) => AddEditNoteViewModel(NoteRepositoryImpl())),
  ];
}
