import 'package:cindh_ui/UserType.dart';
import 'package:cindh_ui/components/ButtonMain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cindh_ui/Animation/FadeAnimation.dart';


void main() {
 // runApp(TestApp());
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: FadeAnimation(0.5,Container(
        child: Column(
          children: <Widget> [
            Center(
              child: Container(
                height: height*0.6,
                child:Stack(
                  children: [

                    Positioned(
                      bottom:0,
                      child: Container(child: SvgPicture.asset('assets/Home.svg', width: width)),
                    )
                  ],
                )
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                child: Text('حول البرنامج', style: TextStyle(fontSize: 32, fontFamily: 'boldarabic', fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 10,),

            Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  width: width,
                  child: Center(child: Text('منصة إلكترونية للجمع بين فعاليات المجتمع  ', style: TextStyle(fontSize: 16, fontFamily: 'arabic',color: Colors.black),)),
                ),
                SizedBox(height: 10,),
                Container(
                  width: width,
                  child: Center(child: Text('   المدني للتعريف بأشطتها وبين المتطوعين', style: TextStyle(fontSize: 16, fontFamily: 'arabic',color: Colors.black),)),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right:18.0),
                  child: Container(
                    width: width,
                    child: Center(child: Text(' . لخدمة ومساعدة هذه الأخيرة', style: TextStyle(fontSize: 16, fontFamily: 'arabic',color: Colors.black),)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            ButtonMain(textSize:12,text: "الدخول",width: width*0.5, height: 60,colortext: Colors.black,colorBorder:Colors.transparent,color:Color.fromRGBO(242,243,248,10), page: UserType(), )

          ],
        ),
      ),
    ));
  }
}



