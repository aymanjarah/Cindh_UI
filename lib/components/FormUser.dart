import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormUser extends StatelessWidget {
  const FormUser({
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
          padding: const EdgeInsets.only(left:20.0, bottom: 5),
          child: Container(
              width: width,
              child: Text('$title', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'mullish',
                fontSize: 12,
                letterSpacing: 1.5,
              ),)),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SvgPicture.asset('$image',height: img_height,),
                  SizedBox(width: 15,),
                  Container(
                    width: width*0.7,
                    child: TextField(
                    style: TextStyle(fontSize:16, fontFamily: 'mullish', fontWeight:FontWeight.bold,color: Color.fromRGBO(48, 53, 58, 100),decoration: TextDecoration.none),
                      decoration: InputDecoration.collapsed(
                          border: InputBorder.none,
                          hintText: '$Hint',
                          hintStyle: TextStyle(fontSize:16, fontFamily: 'mullish', fontWeight:FontWeight.bold,color: Color.fromRGBO(48, 53, 58, 100),decoration: TextDecoration.none),),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}