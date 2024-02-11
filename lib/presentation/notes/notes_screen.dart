import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app/presentation/notes/components/note_item.dart';
import 'package:note_app/ui/color.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddEditNoteScreen(),
            ),
            );
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              NoteItem(
                  note: Note(
                    title: 'title1',
                      content: 'content 1',
                      color: orange.value, //해당 색의 int값을 가져온다.
                      timestamp: 1,
                  ),
              ),
              NoteItem(
                note: Note(
                  title: 'title2',
                  content: 'content 2',
                  color: purple.value,
                  timestamp: 2,
                ),
              ),
            ],
          ),
        ));
  }
}
