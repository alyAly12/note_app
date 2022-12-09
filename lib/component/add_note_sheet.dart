import 'package:flutter/material.dart';
import 'package:note_app/component/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children:const [
          SizedBox(height: 32,),
          CustomTextField(hintText:'Title' ,maxLines: 1,),
          SizedBox(height: 20,),
          CustomTextField(hintText: 'Content', maxLines:7)
        ],
      ),
    );
  }
}
