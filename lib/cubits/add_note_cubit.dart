

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants/my_constants.dart';
import 'package:note_app/models/notes_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());



   addNote(NoteModel note)async
   {
     emit(AddNoteLoading());
    try{
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } catch(e){
      AddNoteFailure(errorMessage: e.toString());
    }
   }
}
