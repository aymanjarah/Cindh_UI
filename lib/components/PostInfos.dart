import 'package:flutter/material.dart';

class PostInfos extends StatelessWidget {
  const PostInfos({
    Key key,
    this.width,
    this.height,
    this.color,
    this.colortext,
    this.text,
    this.page,
  }) : super(key: key);
  final String text;
  final double width;
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

        ),
        child: Center(
            child: Text("$text", style: TextStyle(fontSize: 15,color: colortext, fontFamily: 'boldarabic'))
        ),
      ),
    );
  }
}