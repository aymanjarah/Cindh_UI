import 'package:flutter/material.dart';



class StatusCheked extends StatelessWidget {
  const StatusCheked({
    Key key,
      this.width,
      this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width*0.1,
      height: height*0.1,
      decoration: BoxDecoration(
        color: Color.fromRGBO(	47,128,237, 1),
        shape: BoxShape.circle,
        border: Border.all(color: Color.fromRGBO(14, 75, 157, 100)),
      ),
      child: Transform.translate(
          offset: Offset(1,0),
          child: Image.asset('assets/Shape.png')),
    );
  }
}
