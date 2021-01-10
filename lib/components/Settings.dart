import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({
    Key key,
      this.SettingsTitle,
      this.colorText,
      this.width,
      this.height,
  }) : super(key: key);
  final String SettingsTitle;
  final Color colorText;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: width,
      height: height*0.08,

      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color.fromRGBO(123, 135, 148,100)),
          )
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$SettingsTitle',style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,color: colorText,fontFamily: 'arabic'),),
          RotationTransition(
              turns: AlwaysStoppedAnimation(180/360),
              child: SvgPicture.asset('assets/Arrow.svg',color: Color.fromRGBO(123,135,148,10),)),
        ],
      ),
    );
  }
}
