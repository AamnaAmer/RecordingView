import 'package:recording_page/consttants.dart';
import 'package:recording_page/screens/details_screen.dart';
import 'package:recording_page/widgets/book_rating.dart';
import 'package:recording_page/widgets/reading_card_list.dart';
import 'package:recording_page/widgets/two_sided_rounded_button.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:
      Container(
        height: double.infinity,
        width: double.infinity,
        child: FittedBox(child: Image.asset('assets/images/Bitmap.png'),
       fit: BoxFit.cover),
      ),
    );
  }


}