import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, required this.onTap}) : super(key: key);
final String title;
final IconData icon;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.w500
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 46,
            width: 46,
            decoration:   BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child:  Center(
              child: Icon(icon),
            ),
          ),
        )
      ],
    );
  }
}
