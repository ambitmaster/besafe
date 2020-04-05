import 'package:besafe/constants/app_colors.dart';
import 'package:flutter/material.dart';

class QuestionItem extends StatelessWidget {
  final String title;
  final String question1;
  final String question2;
  final String question3;
  final String question4;
  const QuestionItem(this.title, this.question1, this.question2, this.question3,
      this.question4);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Container(
          color: mutedColor,
          child: Column(children: <Widget>[
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )),
                SizedBox(height: 10,),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  question1,
                  style: TextStyle(fontSize: 16),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  question2,
                  style: TextStyle(fontSize: 16),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  question3,
                  style: TextStyle(fontSize: 16),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  question4,
                  style: TextStyle(fontSize: 16),
                )),
          ]),
        ));
  }
}
