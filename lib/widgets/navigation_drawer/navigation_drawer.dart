import 'package:besafe/constants/app_colors.dart';
import 'package:besafe/widgets/call_to_action/call_to_action.dart';
import 'package:besafe/widgets/navigation_drawer/navigation_drawer_content.dart';
import 'package:besafe/widgets/questions/questions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NavigationDrawer extends StatefulWidget {
  NavigationDrawer({Key key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  static const double maxSlide = 225.0;
  static const double minDragStartEdge = 60;
  static const double maxDragStartEdge = maxSlide - 16;
  bool _canBeDragged = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  void open() {
    animationController.forward();
  }

  void close() {
    animationController.reverse();
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  @override
  Widget build(BuildContext context) {
    var myDrawer = Material(child: DrawerContent());
    var myChild = Material(
        child: Container(
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
                          onPressed: () {
                            toggle();
                          },
                        )),
                    Padding(
                        padding: EdgeInsets.only(right: 15, bottom: 50),
                        child: SizedBox(
                            width: 100, child: Lottie.asset('assets/lottie/no-hand-shakes.json') /*Image.asset('assets/logo.png')*/)),
                  ],
                ),
                Center(
                    child: Text(
                  'ZERO SPREAD.\nSTOP THE VIRUS',
                  style: TextStyle(
                      fontWeight: FontWeight.w800, height: 0.9, fontSize: 45),
                  textAlign: TextAlign.center,
                )),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'If a person starts to have symptoms the day after which means that you could have catched the virus from him or her when you were close to this person. You should then put yourself into quarantine but you won’t if you don’t know that the person has symptoms, this is exactly where beSafe comes in!',
                  style: TextStyle(fontSize: 16, height: 1.7),
                  textAlign: TextAlign.center,
                ),
                CallToAction('Track Now'),
                Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton (
                      onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Questions()),
                  );
                      },
                      child: Text('Do you have Symptoms')),
                  ],
                ))
              ],
            )));

    return GestureDetector(
        onTap: null,
        onHorizontalDragStart: _onDragStart,
        onHorizontalDragUpdate: _onDragUpdate,
        onHorizontalDragEnd: _onDragEnd,
        child: AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              double slide = maxSlide * animationController.value;
              double scale = 1 - (animationController.value * 0.3);
              return Stack(
                children: <Widget>[
                  myDrawer,
                  Transform(
                      transform: Matrix4.identity()
                        ..translate(slide)
                        ..scale(scale),
                      alignment: Alignment.centerLeft,
                      child: myChild),
                ],
              );
            }));
  }

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = animationController.isDismissed &&
        details.globalPosition.dx < minDragStartEdge;
    bool isDragCloseFromRight = animationController.isCompleted &&
        details.globalPosition.dx > maxDragStartEdge;

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta / maxSlide;
      animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    if (animationController.isDismissed || animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= 365.0) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;
      animationController.fling(velocity: visualVelocity);
    } else if (animationController.value < 0.5) {
      close();
    } else {
      open();
    }
  }
}
