import 'package:flutter/material.dart';
import 'package:note_app/component/note_item.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 4),
      child: ListView.builder(
        padding: EdgeInsets.zero,
          itemBuilder: (context ,index){
            return  const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: NoteItem(),
            );
          }
      ),
    );
  }
}
