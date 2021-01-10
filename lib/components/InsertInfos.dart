import 'package:flutter/material.dart';
class InsertInfo extends StatelessWidget {
  const InsertInfo({
    Key key,
      this.title,
      this.text,
      this.width,
      this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: width,
            child: Center(
              child: Text('$title', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'arabic',
                fontSize: 15,
                letterSpacing: 1.5,
              ),),
            )),
        SizedBox(height: 10,),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text('$text', style: TextStyle(fontSize:16, fontFamily: 'mullish', fontWeight:FontWeight.bold,color: Color.fromRGBO(48, 53, 58, 100)))),
        ),
      ],
    );
  }
}