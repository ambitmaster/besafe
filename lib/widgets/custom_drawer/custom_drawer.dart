import 'package:besafe/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    var myDrawer = Container(
      color: secondaryColor,
    );
    var myChild = Material(
        type: MaterialType.transparency,
        child: Container(
            decoration: BoxDecoration(color: primaryColor),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Text(
                    'beSafe',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  Text(
                    'Let fight the virus',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 18, color: mutedColor),
                    )
                ]))));
    return Stack(
      children: <Widget>[
        myDrawer,
        myChild,
      ],
    );
  }
}
