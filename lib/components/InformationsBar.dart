import 'package:flutter/material.dart';

class InformationsBar extends StatelessWidget {
  const InformationsBar({
    Key key,
      this.picture_path,
      this.account_name,
      this.fontsize,
      this.height,
      this.width,
  }) : super(key: key);
  final String account_name;
  final String picture_path;
  final double fontsize;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(

        height: height*0.25,
        child:Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color.fromRGBO(123, 135, 148,100)),
              )
          ),
          child: Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top:30, right: 20),
                child: Container(
                  width: width*0.28,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(	213, 230, 251, 100),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Transform.translate(
                      offset: Offset(4,0),
                      child: Image.asset('$picture_path')),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:30,right: 10),
                child: Container(
                  width: width*0.5,
                  color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('$account_name',
                          style: TextStyle(fontFamily:'arabic',color: Colors.black,fontSize: fontsize, letterSpacing: 2),
                        ),
                        Text('تحديث الحساب',
                          style: TextStyle(fontFamily:'arabic',fontWeight:FontWeight.bold,color: Colors.blueAccent,fontSize: 18, height: 1.5, letterSpacing: 2),
                        ),

                      ],
                    ),
                  ),
                ),

              /*Transform.translate(
                offset: Offset(0,20),
                child: RichText(
                  text: TextSpan(
                      text:'$account_name',
                      style: TextStyle(fontFamily:'arabic',color: Colors.black,fontSize: fontsize, letterSpacing: 2),
                      children: <InlineSpan>[
                        WidgetSpan(
                          child: SizedBox(
                            height: 10,
                          ),
                        ),
                        TextSpan(text: 'تحديث الحساب', style: TextStyle(fontFamily:'arabic',fontWeight:FontWeight.bold,color: Colors.blueAccent,fontSize: 18, height: 1.5, letterSpacing: 2)),
                      ]
                  ),

                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
