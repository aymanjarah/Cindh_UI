import 'package:flutter/material.dart';


class ActivityType extends StatelessWidget {
  const ActivityType({
    Key key,
      this.text,
      this.image,
      this.img_height,
      this.colorLogo,
  }) : super(key: key);

  final Color colorLogo;
  final String text;
  final String image;
  final double img_height;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right:8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: width/8,
              height: height,
              decoration: BoxDecoration(
                color: colorLogo,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9),topLeft:Radius.circular(9)),
              ),

            ),
            Text('$text', style: TextStyle(fontSize:13, fontFamily: 'arabic',color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
