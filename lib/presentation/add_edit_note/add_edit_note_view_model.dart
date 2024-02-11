import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';

class AddEditNoteViewModel with ChangeNotifier {
  final NoteRepository repository;

  AddEditNoteViewModel(this.repository);

  int _color = Colors.orange.value;

  int get color => _color;

  void onEvent(AddEditNoteEvent event) {
    event.when(
      changeColor: _changeColor,
      saveNote:_saveNote,
    );
  }

  Future<void> _changeColor(int color) async {
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(int? id, String title, String content) async {
    if (id == null) {
      repository.insertNote(Note(
          title: title,
          content: content,
          color: _color,
          timestamp: DateTime
              .now()
              .millisecondsSinceEpoch
      ));
    } else {
      await repository.updateNote(Note(
        id: id,
          title: title,
          content: content,
          color: _color,
          timestamp: DateTime
              .now()
              .millisecondsSinceEpoch
      ));

    }
  }


}