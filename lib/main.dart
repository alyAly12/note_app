import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants/my_constants.dart';
import 'package:note_app/constants/simple_bloc_obsrver.dart';
import 'package:note_app/cubits/add_note_cubit.dart';
import 'package:note_app/views/edit_view.dart';
import 'package:note_app/views/home_view.dart';

import 'models/notes_model.dart';

void main()async {
  await Hive.initFlutter();
  Bloc.observer =SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
 await Hive.openBox<NoteModel>(kNoteBox);
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
