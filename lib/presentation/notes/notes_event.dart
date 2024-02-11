
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/domain/model/note.dart';
part 'notes_event.freezed.dart';

@freezed
class NotesEvent with _$NotesEvent {
const factory NotesEvent.loadNotes() = LoadNotes;
const factory NotesEvent.deleteNotes(Note note) = DeleteNotes;
const factory NotesEvent.restoreNotes() = RestoreNotes;
}

//enum도 가능하지만, 봉인 클래스 장점: 데이터를 받을 수 있음
//놓치지 않도록 event를 제한