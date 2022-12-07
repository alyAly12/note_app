import 'package:flutter/material.dart';
import 'package:note_app/component/custom_appbar.dart';
import 'package:note_app/component/notes_list_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
static String id='homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 40),
        child: Column(
          children: const [
            CustomAppBar(),
            SizedBox(height: 15),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );

  }
}
