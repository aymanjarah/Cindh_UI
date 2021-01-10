import 'file:///C:/Users/Aymane-JARAH/AndroidStudioProjects/cindh_ui/lib/Individu/ActivityEngagement.dart';
import 'file:///C:/Users/Aymane-JARAH/AndroidStudioProjects/cindh_ui/lib/Individu/IndividuLogin.dart';

import 'package:cindh_ui/components/SearchBarActivity.dart';
import 'package:cindh_ui/components/TagWall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';



class WallOfActivities extends StatefulWidget {
  @override
  _WallOfActivitiesState createState() => _WallOfActivitiesState();
}

class _WallOfActivitiesState extends State<WallOfActivities> {
  int _body = 0;
  String _active='قفف';
  Widget bodyFunction(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    switch (_body) {
      case 0:
        print(0);
        return Column(
          children: [
            GestureDetector(onTap: (){
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ActivityEngagement(),
                ),
              );
            },
                child: ActivityInWall(image:'assets/image 7.png',height: height, width: width),),
            ActivityInWall(image:'assets/image 7.png',height: height, width: width),
            ActivityInWall(image:'assets/image 7.png',height: height, width: width),
            ActivityInWall(image:'assets/image 7.png',height: height, width: width),

          ],
        );
        break;
      case 1:
        print(1);
        return  Column(
            children: [
              ActivityInWall(image:'assets/Logo 2.png',height: height, width: width),
              ActivityInWall(image:'assets/Logo 2.png',height: height, width: width),
              ActivityInWall(image:'assets/Logo 2.png',height: height, width: width),
              ActivityInWall(image:'assets/Logo 2.png',height: height, width: width),

            ],
        );
        break;
      case 2:
        print(2);
        return  Column(
          children: [
            ActivityInWall(image:'assets/image 7.png',height: height, width: width),
            ActivityInWall(image:'assets/image 7.png',height: height, width: width),
            ActivityInWall(image:'assets/image 7.png',height: height, width: width),

          ],
        );
        break;
      default:
        return Column(
          children: [
            GestureDetector(onTap: (){
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ActivityEngagement(),
                ),
              );
            },
              child: ActivityInWall(image:'assets/image 7.png',height: height, width: width),),
            ActivityInWall(image:'assets/image 7.png',height: height, width: width),
            ActivityInWall(image:'assets/image 7.png',height: height, width: width),
            ActivityInWall(image:'assets/image 7.png',height: height, width: width),

          ],
        );
        break;


    }
  }
  void active(String btn){setState(() {
    _active=btn;
  });}
  void ChangeBody(int index){setState(() {
    _body=index;
  });}
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          color: Color.fromRGBO(242,243,248,1),
          child: Column(
            children: [
              Stack(
                children: [
                  AppBar(
                    leading: Transform.translate(
                        offset: Offset(-10,0),
                        child: IconButton(onPressed:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => IndividuLogin()),
                          );
                        },icon: SvgPicture.asset('assets/Arrow.svg',))),
                    backgroundColor: Colors.white, //No more green
                    elevation: 0.0, //Shadow gone
                  ),
              Transform.translate(
                offset: Offset(0,50),
                  child: Center(child: Text('لائحة الأنشطة', style: TextStyle(fontSize: 20, fontFamily: 'boldarabic', fontWeight: FontWeight.bold),))),
                ],
              ),

              Container(height: height*0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      spreadRadius: 0.5,
                      blurRadius: 7,
                      offset: Offset(0, 8), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:0.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        Container(width: width*0.15,child: Center(child: TagWall(event:ChangeBody,action:active,index:0,
                          active:_active=='قفف'?true:false,text: "قفف", height: 35, textSize:12,colortext: Colors.white,color:Color.fromRGBO(76,149,255,1), width: width,)),),
                        SizedBox(width: width*0.1,),
                        Container(width: width*0.3,child: Center(child: TagWall(event:ChangeBody,action:active,index:1,
                          active:_active=='مشروع مستدام'?true:false,text: "مشروع مستدام", height: 35, textSize:12,colortext: Colors.white,color:Color.fromRGBO(76,149,255,1),width: width,)),),
                        SizedBox(width: width*0.05,),
                        Container(width: width*0.25,child: Center(child: TagWall(event:ChangeBody,action:active,index:2,
                          active:_active=='    تبرع بالدم'?true:false,text: "    تبرع بالدم", height: 35, textSize:12,colortext: Colors.white,color:Color.fromRGBO(76,149,255,1),width: width,)),),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:2,right: 15,left: 15,bottom:15.0),
                child: Container(color:Color.fromRGBO(242,243,248,1),child: SearchBarActivity(width: width*0.9, height: height*0.075, title: '',Hint:'المغرب',text:'*********', image: 'assets/Search.svg', img_height: 25),
                ),
              ),

              Flexible(
                child: ListView(
                  children: [
                    bodyFunction(context),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}

class ActivityInWall extends StatelessWidget {
  const ActivityInWall({
    Key key,
      this.image,
      this.height,
      this.width,
  }) : super(key: key);
  final String image;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0,2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 15),
              child: Container(

                  height:height*0.4,width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
              child: Column(
                children: [
                  Container(
                    width: width,
                    height: height*0.22,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(12),topRight: Radius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Align(alignment: Alignment.topRight,
                        child: Text('قفف أسبوعية لفائدة الأرامل', style: TextStyle(fontSize: 18, fontFamily: 'arabic'),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // variable
                        Image.asset('assets/Star 1.png',scale: 0.9,),
                        SizedBox(width: 2,),
                        //variable
                        Text('5.0 ', style: TextStyle(fontSize: 15, fontFamily: 'arabic',color: Colors.black,
                            fontWeight: FontWeight.bold,
                        )),
                        //variable
                        Text('(99+) ', style: TextStyle(fontSize: 15, fontFamily: 'arabic',color: Colors.blueGrey)),
                      // variable
                      Text(' | المغرب', style: TextStyle(fontSize: 15, fontFamily: 'arabic',color: Colors.blueGrey)),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:0.0,vertical: 0.0),
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        TagActivity(text: " الأرامل", height: 25, textSize:12,colortext: Colors.redAccent,color:Color.fromRGBO(255,93,93,0.5), width: width,),
                        TagActivity(text: "قفف", height: 25, textSize:12,colortext: Colors.green,color:Color.fromRGBO(0,255,0,0.3),width: width,),
                        TagActivity(text: "قفف", height: 25, textSize:12,colortext: Colors.purple,color:Color.fromRGBO(128,0,128,0.3),width: width,),
                        TagActivity(text: "قفف", height: 25, textSize:12,colortext: Colors.orange,color:Color.fromRGBO(255,165,0,0.3),width: width,),
                        TagActivity(text: "قفف", height: 25, textSize:12,colortext: Colors.brown,color:Color.fromRGBO(165,42,42,0.3),width: width,),
                        TagActivity(text: "قفف", height: 25, textSize:12,colortext: Colors.pink,color:Color.fromRGBO(255, 192, 203,0.3),width: width,),
                        TagActivity(text: "قفف", height: 25, textSize:12,colortext: Colors.yellow,color:Color.fromRGBO(255,255,0,0.3),width: width,),
                        TagActivity(text: "قفف", height: 25, textSize:12,colortext: Colors.green,color:Color.fromRGBO(0,255,0,0.3),width: width,),

                        TagActivity(text: "مشروع مستدام", height: 25, textSize:12,colortext: Colors.blueAccent,color:Color.fromRGBO(76,149,255,0.5),width: width,),
                      ],
                    ),
                  ),


                ],
              ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

class TagActivity extends StatelessWidget {
  const TagActivity({
    Key key,
      this.width,
      this.height,
      this.color,

      this.colortext,
      this.text,

      this.textSize,
  }) : super(key: key);
  final String text;

  final double width;

  final double textSize;
  final double height;
  final Color color;
  final Color colortext;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),

            color: color),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("$text", style: TextStyle(fontSize: textSize,color: colortext, fontFamily: 'arabic',fontWeight: FontWeight.bold),),
              Text("   O ", style: TextStyle(fontSize: textSize,color: colortext, fontFamily: 'boldarabic')),
            ],
          ),
        ),
      ),
    );
  }
}