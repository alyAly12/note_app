import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.w500
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 46,
            width: 46,
            decoration:   BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: const Center(
              child: Icon(FontAwesomeIcons.magnifyingGlass),
            ),
          ),
        )
      ],
    );
  }
}
