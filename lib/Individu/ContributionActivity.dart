import 'file:///C:/Users/Aymane-JARAH/AndroidStudioProjects/cindh_ui/lib/Individu/IndividuPorfile.dart';
import 'package:cindh_ui/components/ButtonMain.dart';
import 'package:cindh_ui/components/EngagementBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ContributionActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            AppBar(
              leading: Transform.translate(
                  offset: Offset(-10,0),
                  child: IconButton(onPressed:() {
                    Navigator.pop(context);
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
              child: Container(
                width:width,
                height: height*0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/image 7.png'),
                    fit: BoxFit.cover,
                  ),
                ),
            ),
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
            Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  width: width,
                  child: Center(child: Text('كأي سنة وفي كل شهر رمضان ينظم نادي المبادرة  ', style: TextStyle(fontSize: 13, fontFamily: 'arabic',color: Colors.grey),)),
                ),
                SizedBox(height: 10,),
                Container(
                  width: width,
                  child: Center(child: Text('الوطنية للتنمية البشرية حملة لجمع التبرعات', style: TextStyle(fontSize: 13, fontFamily: 'arabic',color: Colors.grey),)),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right:18.0),
                  child: Container(
                    width: width,
                    child: Center(child: Text('والبحث عن متطوعين في جميع مناطق المغرب', style: TextStyle(fontSize: 13, fontFamily: 'arabic',color: Colors.grey),)),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:50.0),
              child: EngagementBar(width: width, height: height*0.07, title: 'نوعية المساهمة',Hint:'*********',text:'*********', image: 'assets/Search.svg', img_height: 25),
            ),
            SizedBox(height: 35),
            ButtonMain(textSize:12,text: "المساهمة",width: width*0.65, height: 50, colortext: Colors.black,colorBorder:Colors.transparent,color:Color.fromRGBO(218,218,218,1), page: individuProfile(), ),


          ],
        ),
      ),

    );
  }
}
