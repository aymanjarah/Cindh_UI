
import 'package:cindh_ui/Assoc/AssocProfile.dart';
import 'package:cindh_ui/components/InsertInfos.dart';
import 'package:cindh_ui/components/PostInfos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50,left:40.0, right: 40.0),
                child: Center(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromRGBO(196, 196, 196, 10),
                          ),
                          width: width,
                          height: height*0.3,
                          child: Center(child:  Text('إضافة الصور', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'arabic',
                            fontSize: 20,
                            letterSpacing: 1,
                          ),),),
                        ),
                        SizedBox(height: height*0.03,),
                        Padding(
                          padding: const EdgeInsets.only(bottom:20.0),
                          child: InsertInfo(width: width*0.9, height: height*0.065, title: 'إسم النشاط',text:'*********',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:20.0),
                          child: InsertInfo(width: width*0.9, height: height*0.065, title: 'الهدف',text:'*********',),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(bottom:25.0),
                            child: InsertInfo(width: width*0.9, height: height*0.1, title: 'معلومات إضافية',text:'*********',)),
                        PostInfos(text:"نشر ",width: width*0.58, height: 60,color:Color.fromRGBO(248,177,71,10), colortext: Colors.black,page: AddActivity(), ),

                      ],
                    ),
                  ),
                ),
              ),
              Positioned(child: AppBar(
                leading: Transform.translate(
                    offset: Offset(-10,0),
                    child: IconButton(onPressed:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AssocProfile()),
                      );
                    },icon: SvgPicture.asset('assets/Arrow.svg',))),
                backgroundColor: Colors.transparent, //No more green
                elevation: 0.0, //Shadow gone
              ),),
            ],
          ),
        )
    );
  }
}


