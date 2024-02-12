import 'package:flutter/material.dart';
import 'package:note_app/di/provider_setup.dart';
import 'package:note_app/presentation/notes/notes_screen.dart';
import 'package:note_app/ui/color.dart';
import 'package:provider/provider.dart';

void main() async {
  //sqflite를 쓰면서 네이티브 코드를 쓰게 되니까 안전하게 플러터와 함께 쓰기 위해 필요
  WidgetsFlutterBinding.ensureInitialized();
  final providers = await getProviders();
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
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
                    foregroundColor: darkGrey,
                  ),
          appBarTheme: Theme.of(context).appBarTheme.copyWith(
                backgroundColor: darkGrey,
              )),
      home: const NoteScreen(),
    );
  }
}
