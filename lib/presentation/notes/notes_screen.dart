import 'package:flutter/material.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app/presentation/notes/components/note_item.dart';
import 'package:note_app/presentation/notes/notes_event.dart';
import 'package:note_app/presentation/notes/notes_view_model.dart';
import 'package:provider/provider.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Note',
            style: TextStyle(fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sort),
            )
          ],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            bool? isSaved = await Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const AddEditNoteScreen()),
            );
            if (isSaved != null && isSaved) {
              viewModel.onEvent(const NotesEvent.loadNotes());
            }
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: state.notes
            // 수정
                .map((e) => GestureDetector(
                      onTap: () async {
                        bool? isSaved = await Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => AddEditNoteScreen(note: e)),
                        );
                        if (isSaved != null && isSaved) {
                          viewModel.onEvent(const NotesEvent.loadNotes());
                        }
                      },
                      child: NoteItem(
                        note: e,
                        onDeleteTap: () {
                          viewModel.onEvent(NotesEvent.deleteNotes(e));
                          final snackBar = SnackBar(
                            content: const Text('노트가 삭제되었습니다'),
                            action: SnackBarAction(
                              label: '취소',
                              onPressed: () {
                                viewModel
                                    .onEvent(const NotesEvent.restoreNotes());
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                    ))
                .toList(),
          ),
        ));
  }
}
