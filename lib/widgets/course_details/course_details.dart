import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder (builder: (context,sizingInformation) { 
      var textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.Desktop 
      ? TextAlign.left
      : TextAlign.center;
      double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.Mobile 
      ? 50
      : 80;
      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.Mobile
      ? 16
      : 21;

      return Container(
      width: 600,
      child: Column (
       crossAxisAlignment: CrossAxisAlignment.start, 
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Text('FLUTTER WEB', 
         style: TextStyle(
           fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize, color: Colors.white),
           textAlign: textAlignment)
         ,
         SizedBox(height: 30,),
         Text('gagasg aslkjhaskj kjsahd kasj dhkasd hkasjhd kasjh dkajh sdkjas hdkajshdkahf lajkg l gjdlsdfjg lsdkj g'
         ,style:TextStyle(
           fontSize: descriptionSize, 
           height:1.7, 
           color: Colors.white),
           textAlign: textAlignment,)
       ],
      )
    );
    });
  }
}