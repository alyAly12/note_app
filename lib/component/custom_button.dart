import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
 const CustomButton({super.key, required this.title, this.isLoading=false, this.onPress});

  final String title;
  final bool isLoading;
 final  void Function()? onPress;

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
          child:isLoading? const CircularProgressIndicator():Text(
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
