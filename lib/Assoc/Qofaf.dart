
import 'package:flutter/material.dart';

class Qofaf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(color: Colors.red,width: width,height: height*0.4,),
          Container(color: Colors.red,width: width,height: height*0.32,),




        ],

      ),
    );
  }
}
