
import 'package:flutter/material.dart';
class ButtonMain extends StatelessWidget {
  const ButtonMain({
    Key key,
      this.width,
      this.height,
      this.color,
      this.colortext,
      this.text,
      this.colorBorder,
      this.textSize,
      this.page,
  }) : super(key: key);
  final String text;
  final Color colorBorder;
  final double width;
  final double textSize;
  final double height;
  final Color color;
  final Color colortext;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color:colorBorder),
        ),
        child: Center(child: Text("$text", style: TextStyle(fontSize: textSize,color: colortext, fontFamily: 'boldarabic'))),
      ),
    );
  }
}