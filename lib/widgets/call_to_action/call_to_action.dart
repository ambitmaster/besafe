import 'package:besafe/constants/app_colors.dart';
import 'package:besafe/view/how_to_use/how_to_use.dart';
import 'package:besafe/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
        child: FlatButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                        title: Text('Start Tracking'),
                        content: Text('Do you want to start'),
                        actions: <Widget>[
                          FlatButton(onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('No')),
                          FlatButton(onPressed: () {
                            
                          }, child: Text('Yes'))
                        ],
                        elevation: 24,
                      ));
            },
            child: Container(
              height: 60,
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                  color: buttonColor, borderRadius: BorderRadius.circular(5)),
            )));
  }
}
