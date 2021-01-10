import 'package:flutter/material.dart';




class EngagementBar extends StatelessWidget {
  const EngagementBar({
    Key key,
      this.title,
      this.text,
      this.image,
      this.Hint,
      this.img_height,
      this.width,
      this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;
  final String Hint;
  final String title;
  final String image;
  final double img_height;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:0.0, bottom: 5),
          child: Container(
              width: width,
              child: Center(
                child: Text('$title', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'arabic',
                  fontSize: 15,
                  letterSpacing: 1.5,
                ),),
              )),
        ),
        Container(

          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                width: width*0.6,
                child: TextField(
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize:16, fontFamily: 'arabic', fontWeight:FontWeight.bold,color: Color.fromRGBO(48, 53, 58, 100),decoration: TextDecoration.none),
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: '$Hint',
                    hintStyle: TextStyle(fontSize:16, fontFamily: 'arabic', fontWeight:FontWeight.bold,color: Color.fromRGBO(48, 53, 58, 100),decoration: TextDecoration.none),),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}