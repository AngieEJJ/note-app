import 'package:flutter/material.dart';
import 'package:note_app/presentation/notes/notes_screen.dart';
import 'package:note_app/ui/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        canvasColor: darkGrey,
        primaryColor: Colors.white,
        floatingActionButtonTheme:
          Theme.of(context).floatingActionButtonTheme.copyWith(
              backgroundColor: Colors.white,
            foregroundColor:  darkGrey,
          ),
        appBarTheme:
          Theme.of(context).appBarTheme.copyWith(
            backgroundColor: darkGrey,
          )
      ),
      home: const NoteScreen()
    );
  }
}

