import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit.dart';
import 'package:note_app/models/notes_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
            maxLines: 1,),
          const SizedBox(height: 20,),
          CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hintText: 'Content',
              maxLines: 7),
          const SizedBox(height: 30,),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading?true:false,
                  title: 'Add',
                  onPress: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var noteModel = NoteModel(title: title!,
                          subTitle: subTitle!,
                          color: const Color(0xff755C3A).value,
                          date: DateTime.now().toString());
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {

                      });
                    }
                  });
            },
          )
        ],
      ),
    );
  }
}