import 'dart:async';
import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_ui_event.dart';
import 'package:note_app/ui/color.dart';

class AddEditNoteViewModel with ChangeNotifier {
  final NoteRepository repository;

  AddEditNoteViewModel(this.repository);

  int _color = roseBud.value;

  int get color => _color;

  // AddEditNoteUiEvent 이벤트가 발생할 때마다 컨트롤러에 넣어준다.

  final _eventController = StreamController<AddEditNoteUiEvent>.broadcast();// 여러번 리슨 불가능 -> broadcast로 여러번 리슨 가능하게 해야함
  // StreamController :  이벤트 관리
  // _eventController:  AddEditNoteUiEvent 타입의 이벤트를 처리하는 StreamController의 인스턴스

  Stream<AddEditNoteUiEvent> get eventStream => _eventController.stream;
  // eventStream: 외부에서 AddEditNoteUiEvent 이벤트 수신하도록 하는 getter 메서드

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
    if (title.isEmpty || content.isEmpty) {
      _eventController.add(const AddEditNoteUiEvent.showSnackBar('제목이나 내용이 없습니다.'));
      return;
    }


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

    _eventController.add(const AddEditNoteUiEvent.saveNote());

    //note가 Insert 되거나 update 될때마다 controller 실행
  }


}