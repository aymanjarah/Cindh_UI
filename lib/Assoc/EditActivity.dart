import 'package:cindh_ui/Assoc/WallAssoc.dart';
import 'file:///C:/Users/Aymane-JARAH/AndroidStudioProjects/cindh_ui/lib/Individu/WallOfActivities.dart';
import 'package:cindh_ui/components/ButtonMain.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';


class EditActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
              AppBar(
                leading: Transform.translate(
                    offset: Offset(-10,0),
                    child: IconButton(onPressed:() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => WallOfActivities(),
                      ),
                      );
                    },
                        icon: SvgPicture.asset('assets/Arrow.svg',))),
                backgroundColor: Colors.transparent, //No more green
                elevation: 0.0, //Shadow gone
              ),
            SizedBox(height: 10,),
            Container(color: Colors.black,height: 0.2,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:28.0),
              child: Container(height: height*0.4,child: Image.asset('assets/image 7.png'),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10,horizontal:28.0),
              child: Container(width: width,
              child: Center(child: Text('قفف رمضان لفائدة الأرامل والمعوزين', style: TextStyle(fontSize: 18, fontFamily: 'boldarabic', fontWeight: FontWeight.bold),)),
                ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:1,horizontal:38.0),
            child: Container(width: width,
              child:Text('الهدف: 100 أسرة معوزة',textAlign: TextAlign.right, style: TextStyle(fontSize: 18, fontFamily: 'arabic'),),
            ),),
          SizedBox(height: 20,),
          Center(
            child: Container(
              child: Text('كأي سنة وفي كل شهر رمضان ينظم نادي المبادرة  ', style: TextStyle(fontSize: 15, fontFamily: 'arabic',color: Colors.grey),),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(

              child: Text('الوطنية للتنمية البشرية حملة لجمع التبرعات', style: TextStyle(fontSize: 15, fontFamily: 'arabic',color: Colors.grey),),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              width: width*0.7,
              child: Text('.والبحث عن متطوعين في جميع مناطق المغرب', style: TextStyle(fontSize: 15, fontFamily: 'arabic',color: Colors.grey),),
            ),
          ),
          SizedBox(height: 35),
          ButtonMain(textSize:12,text: "تعديل",width: width*0.65, height: 50, colortext: Colors.black,colorBorder:Colors.transparent,color:Color.fromRGBO(248,177,71,10), page: WallAssoc(), ),

        ],
          ),

    );
  }
}
