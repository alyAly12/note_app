import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants/my_constants.dart';
import 'package:note_app/views/edit_view.dart';
import 'package:note_app/views/home_view.dart';

void main()async {
  await Hive.initFlutter();
 await Hive.openBox(kNoteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent
        )
      ),
      initialRoute: HomeView.id,
      routes: {
        HomeView.id:(context)=>const HomeView(),
        EditView.id:(context)=>const EditView()
      },
    );
  }
}
