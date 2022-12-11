import 'package:flutter/material.dart';
import 'package:note_app/component/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode autoValidateMode= AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32,),
           CustomTextField(
            onSaved: (value)
            {
             title=value;
            },
            hintText:'Title' ,
            maxLines: 1,),
          const SizedBox(height: 20,),
           CustomTextField(
             onSaved: (value)
             {
               subTitle=value;
             },
              hintText: 'Content',
              maxLines:7),
          const SizedBox(height: 30,),
          CustomButton(
              title: 'Add',
              onPress: (){
                if(formKey.currentState!.validate())
                {
                  formKey.currentState!.save();
                }else
                {
                  autoValidateMode=AutovalidateMode.always;
                  setState(() {

                  });
                }
              })
        ],
      ),
    );
  }
}
