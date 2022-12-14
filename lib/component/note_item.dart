import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {

  const NoteItem({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, EditView.id);
          },
          child: Container(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
            decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    'flutter',
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                    child: Text(
                      'Something to remember everyday and night',
                      style: GoogleFonts.alike(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  trailing: IconButton(onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.trash, size: 30,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Text(
                    'May 21 ,2022',
                    style: GoogleFonts.alike(
                        fontSize: 18
                    ),
                  ),
                )
              ],
            ),
          ),
        );
  }
}

