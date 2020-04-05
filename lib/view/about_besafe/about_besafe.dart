import 'package:besafe/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutBeSafe extends StatelessWidget {
  const AboutBeSafe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                heightFactor: 2,
                child: Text(
                  'About beSafe',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Center(
                  child: SizedBox(
                      height: 250,
                      child: Lottie.network(
                          'https://assets2.lottiefiles.com/private_files/lf30_RPZ14b.json'))),
              Center(
                child: 
                Column (
                  children: <Widget>[
                    Text('What about it?',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    Text('beSafe is an application that has the goal to prevent the spread of the virus and thus save lives. It uploads the position where the person is that have the app installed.\n\nWhen someone gets symptoms they just click the button and they have to answer a few questions to see if they have some of the symptoms that you can get if you have Covid-19.\n\nIf the person has some of the symptoms typical for Covid-19 the app sends a warning to people who have been close to the person who have the symptoms. These people can then put themselves into quarantine.',
                    textAlign: TextAlign.center,),
                    SizedBox(height:35),
                    FlatButton (
                      color: buttonColor,
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text('Go Back'),)
                  ],
                 ))
            ],
          ),
        ),
      ),
    );
  }
}
