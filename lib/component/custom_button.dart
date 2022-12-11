import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key, required this.title, required this.onPress}) : super(key: key);
final String title;
   void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width:MediaQuery.of(context).size.width ,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          )
        ),
          onPressed: onPress,
          child: Text(
              title,
          style: GoogleFonts.alike(
            fontSize: 30,
            color: Colors.black87
          ),
          )
      ),
    );
  }
}
