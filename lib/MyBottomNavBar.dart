import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:5,left: 20,right: 20),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
              height: 110.0,
              width: 100.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,),
              child: SvgPicture.asset(
                'assets/Explore icon.svg',
              )),
          new Container(
              height: 110.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,),
              child: SvgPicture.asset(
                'assets/add icon.svg',
              )),
          new Container(
              height: 110.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,),
              child: SvgPicture.asset(
                'assets/Profile icon.svg',
              )),
        ],
      ),
    );
  }
}