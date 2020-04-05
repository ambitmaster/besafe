import 'package:besafe/constants/app_colors.dart';
import 'package:besafe/widgets/call_to_action/call_to_action.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 50),
                    child: IconButton(
                      icon: Icon(Icons.subject),
                      onPressed: () {},
                    )),
                Padding(
                    padding: EdgeInsets.only(right: 15, bottom: 50),
                    child: SizedBox(
                        width: 100, child: Lottie.asset('assets/lottie/no-hand-shakes.json'))),
              ],
            ),
            Center(
                child: Text(
              'ZERO SPREAD.\nFIGHT THE VIRUS',
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 0.9, fontSize: 45),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: 30,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet ex eros. Aenean id volutpat nisl. Fusce blandit quam enim, id facilisis ligula feugiat ac. Morbi eget turpis at enim maximus iaculis a a augue. Duis eu malesuada tellus, vitae pellentesque mi.',
              style: TextStyle(fontSize: 16, height: 1.7),
              textAlign: TextAlign.center,
            ),
            CallToAction('Get Started'),
            Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HackTheCrisis'),
                Text('HackTheCrisis'),
              ],
            ))
          ],
        ));
  }
}
