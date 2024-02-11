import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/presentation/notes/notes_event.dart';

class NotesViewModel with ChangeNotifier {
  final NoteRepository repository;

  NotesViewModel(this.repository);

  List<Note> _notes = [];
  Note? _recentlyDeletedNote;

  UnmodifiableListView<Note> get notes => UnmodifiableListView(_notes);

  void onEvent(NotesEvent event) {
    event.when(
        loadNotes: _loadNotes,
        deleteNotes: _deleteNote,
        restoreNotes: _restoreNotes
    );
  }

  Future<void> _loadNotes() async {
    List<Note> notes = await repository.getNotes();
    _notes = notes;
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await repository.deleteNote(note);
    _recentlyDeletedNote = note;

    await _loadNotes();
  }

  Future<void> _restoreNotes() async {
    if (_recentlyDeletedNote != null) {
     await repository.insertNote(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      _loadNotes();
    }
  }
}
