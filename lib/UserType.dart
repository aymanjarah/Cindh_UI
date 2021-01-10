import 'package:cindh_ui/Assoc/AssocLogin.dart';
import 'package:cindh_ui/Individu/IndividuPorfile.dart';
import 'package:flutter/material.dart';
import 'package:cindh_ui/components/ButtonMain.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget> [
          Center(
            child: Container(

                height: height*0.6,
                child:Stack(
                  children: [
                    Positioned(
                      bottom:0,
                      child: SvgPicture.asset('assets/undraw_road_sign_mfpo 1.svg', width: width),
                    ),

                    new Positioned(
                      top: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: AppBar(
                          leading: Transform.translate(
                              offset: Offset(-10,0),
                              child: IconButton(onPressed:() {
                                Navigator.pop(context);
                              },
                                  icon: SvgPicture.asset('assets/Arrow.svg',))),
                          backgroundColor: Colors.transparent, //No more green
                          elevation: 0.0, //Shadow gone
                        ),
                      ),),
                  ],
                )
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Container(
              child: Text('نوعية المستخدم', style: TextStyle(fontSize: 32, fontFamily: 'boldarabic', fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: 20,),
          ButtonMain(textSize:12,text:"مجتمع مدني",width: width*0.58, height: 60, colortext: Colors.black,colorBorder:Colors.transparent,color:Color.fromRGBO(255,184,2,10),page:AssocLogin() ),
          SizedBox(height: 20,),
          ButtonMain(textSize:12,text:"متبرع أو محتاج ",width: width*0.58, height: 60, colortext: Colors.black,colorBorder:Colors.transparent,color:Color.fromRGBO(242,243,248,100),page: individuProfile(), ),
        ],
      ),
    );
  }
}
