import 'package:flutter/material.dart';
import 'package:note_app/component/note_item.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);
  final data= const[
    Colors.teal,
    Colors.greenAccent,
    Colors.brown,
    Colors.blue,
    Colors.green,
    Colors.redAccent
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
        itemBuilder: (context ,index){
          return  Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItem(color: data[index],),
          );
        }
    );
  }
}
