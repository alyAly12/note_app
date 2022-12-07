import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Row(
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
              height: 40,
              width: 40,
              decoration:  const BoxDecoration(
                color: Color(0xff3C3B3C),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0.1,
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Center(
                child: Icon(FontAwesomeIcons.magnifyingGlass),
              ),
            ),
          )
        ],
      ),
    );
  }
}
