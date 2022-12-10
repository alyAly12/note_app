import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/component/add_note_sheet.dart';
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
          children:  [
            CustomAppBar(title: 'Notes', icon: FontAwesomeIcons.magnifyingGlass, onTap: (){}),
            const Expanded(child: NotesListView())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: (){
          showModalBottomSheet(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
              context: context,
              builder: (context){
                return const AddNoteBottomSheet();
              }
          );
        },
      child: const Icon(FontAwesomeIcons.bars,color: Colors.white,),
      ),
    );

  }
}
