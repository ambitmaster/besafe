import 'package:besafe/constants/app_colors.dart';
import 'package:besafe/view/about_besafe/about_besafe.dart';
import 'package:besafe/view/how_to_use/how_to_use.dart';
import 'package:besafe/view/profile/profile.dart';
import 'package:besafe/view/settings/settings.dart';
import 'package:flutter/material.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: darkMode,
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Image.asset(
                    'assets/logo-w.png',
                    width: 150,
                  )),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutBeSafe()),
                  );
                },
                leading: Icon(Icons.font_download),
                title: Text('About beSafe'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HowToUse()),
                  );
                },
                leading: Icon(Icons.touch_app),
                title: Text('How to Use'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
              SizedBox(
                height: 350,
              ),
              Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Developed by',
                          style: TextStyle(color: mutedColor),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Crille & Alex',
                          style: TextStyle(color: mutedColor),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'for HackTheCrisis',
                          style: TextStyle(color: mutedColor),
                        ))
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
