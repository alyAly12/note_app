import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText, required this.maxLines, this.onSaved}) : super(key: key);
final String hintText;
final int maxLines;
final void Function(String?)?onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value)
      {
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }else{
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: GoogleFonts.alike(
          color: Colors.teal,
          fontSize: 20
        ),
        focusedBorder: buildBorder(Colors.teal),
      ),
      cursorColor: Colors.white,
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide:  BorderSide(
          color: color??Colors.white
        )
      );
  }
}
