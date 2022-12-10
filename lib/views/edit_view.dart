import 'package:flutter/material.dart';

import '../component/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({Key? key}) : super(key: key);
  static String id='EditView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditViewBody(),
    );
  }
}
