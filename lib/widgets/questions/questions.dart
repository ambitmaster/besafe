import 'package:besafe/constants/app_colors.dart';
import 'package:besafe/widgets/questions/question_item.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  const Questions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material (
      child: Container (
      color: Colors.white,
      child: ListView(
      children: <Widget>[
        QuestionItem(
          'How high is your temprature',
          'Under 38.0 C',
          '38.0 - 39.4 C',
          '39.5 or over',
          ''),
        QuestionItem (
          'Have you recently started coughing?',
          'No',
          'Yes, sometimes',
          'Yes, often',
          'Yes, almost all the time'),
        QuestionItem (
          'Have you recently had difficulty breathing?',
          'No',
          'Yes, I get shortness of breath with light effort but not at rest',
          'Yes, I feel some distress at rest',
          'Yes, I feel real shortness of breath all the time'),
          Padding (
            padding: EdgeInsets.all(15),
            child: FlatButton(
            color: buttonColor,
            onPressed: (){},
            child: Text('Analyze Now',style: TextStyle(color: Colors.white),),))
      ],
    )));
  }
}