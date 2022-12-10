import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/component/custom_appbar.dart';

import 'custom_text_field.dart';


class EditViewBody extends StatelessWidget {
  const EditViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 12),
      child: Column(
        children:  [
          CustomAppBar(title: 'Edit Note', icon: FontAwesomeIcons.check, onTap: (){}),
          const SizedBox(height: 32,),
          const CustomTextField(hintText:'Title' ,maxLines: 1,),
          const SizedBox(height: 20,),
          const CustomTextField(hintText: 'Content', maxLines:7),
        ],
      ),
    );
  }
}
