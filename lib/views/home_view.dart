import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/component/custom_app_bar.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
static String id='homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          CustomAppBar()
        ],
      ),
    );

  }
}
