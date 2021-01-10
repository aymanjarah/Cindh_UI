import 'package:cindh_ui/Assoc/AssocProfile.dart';
import 'package:cindh_ui/UserType.dart';
import 'package:cindh_ui/components/ButtonMain.dart';
import 'package:cindh_ui/components/FormUser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssocLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Center(
              child: Container(
                  height: height*0.4,
                  child:Stack(
                    children: [
                      Positioned(
                        bottom:0,
                        child: SvgPicture.asset('assets/undraw_Login_re_4vu2 1.svg', width: width),
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UserType(),
                                    ),
                                  );
                                },icon: SvgPicture.asset('assets/Arrow.svg',))),
                            backgroundColor: Colors.transparent, //No more green
                            elevation: 0.0, //Shadow gone
                          ),
                        ),),
                    ],
                  )
              ),
            ),
            SizedBox(height: 30,),
            FormUser(width: width*0.9, height: height*0.075, title: 'EMAIL',Hint:'name@email.com',text:'name@email.com', image: 'assets/default.svg',img_height: 29),
            SizedBox(height: 15,),
            FormUser(width: width*0.9, height: height*0.075, title: 'PASSWORD',Hint:'*********',text:'*********', image: 'assets/Rectangle-path.svg', img_height: 17),
            SizedBox(height: 40,),
            ButtonMain(textSize:12,text: "الدخول",width: width*0.85, height: 50, colortext: Colors.white,colorBorder:Colors.transparent,color:Color.fromRGBO(47,128,	237,10), page: AssocProfile(), ),
            SizedBox(height: 30,),
            ButtonMain(textSize:12,text: " تسجيل الدخول",width: width*0.85, height: 50,colortext:Colors.black,colorBorder:Colors.transparent,color:Color.fromRGBO(242,243,248,10), page: AssocLogin(), ),

          ],
        ),
      ),
    );
  }
}

