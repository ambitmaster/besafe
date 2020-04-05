import 'package:besafe/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HowToUse extends StatelessWidget {
  const HowToUse({Key key}) : super(key: key);

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
                  'How to Use',
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
                          'https://assets3.lottiefiles.com/private_files/lf30_WdTEui.json'))),
              Center(
                child: 
                Column (
                  children: <Widget>[
                    Text('Create a Account',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    Text('Its simple, you just create your account \n with your email and sign in',
                    textAlign: TextAlign.center,),
                    SizedBox(height:35),
                    Text('Start Tracking',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    Text('When its time to go outside you simply can start the app and turn on the tracking feature. No worries your data is safe, no personal data will be shared',
                    textAlign: TextAlign.center,),
                    SizedBox(height:35),
                    Text('Symptoms?',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    Text('If you have any symptoms you can press the button to do our test to determine if you are at risk',
                    textAlign: TextAlign.center,),
                    SizedBox(height: 20,),
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
