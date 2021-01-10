
import 'package:cindh_ui/Assoc/DemandesAssoc.dart';
import 'file:///C:/Users/Aymane-JARAH/AndroidStudioProjects/cindh_ui/lib/Individu/IndividuLogin.dart';

import 'file:///C:/Users/Aymane-JARAH/AndroidStudioProjects/cindh_ui/lib/Individu/WallOfActivities.dart';
import 'package:cindh_ui/components/InformationsBar.dart';
import 'package:cindh_ui/components/Settings.dart';
import 'package:cindh_ui/components/Status.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';


class individuProfile extends StatefulWidget {

  @override
  _individuProfileState createState() => _individuProfileState();
}

class _individuProfileState extends State<individuProfile> {
  int _body = 0;
  Widget bodyFunction(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    switch (_body) {
      case 0:
        return WallOfActivities();
        break;
      case 1:
        print('r');
        return ProfileIndividu(width:width,height:height);
        break;
      default:
        return WallOfActivities();
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bodyFunction(context),
        bottomNavigationBar: FancyBottomNavigation(

          circleColor: Colors.blueAccent,
          textColor: Colors.white,
          initialSelection: 0,
          inactiveIconColor: Colors.black,
          tabs: [
            TabData(iconData: Icons.search, title: 'الحائط'),
            TabData(iconData: Icons.person, title: "الحساب الشخصي")
          ],
          onTabChangedListener: (index) {
            setState(() {
              _body = index;
            });
          },
        )
    );
  }
}

class ProfileIndividu extends StatelessWidget {
  const ProfileIndividu({
    Key key,
      this.height,
      this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Column(
            children: [
              InformationsBar(picture_path:'assets/Logo 2.png',fontsize:20,account_name:'عبد الرحيم  \n',height: height, width: width),
              SizedBox(height: 30),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Column(
                    children: <Widget>[
                      Align(alignment:Alignment.centerLeft,child: Text('بيانات الحساب',style: TextStyle(fontFamily: 'arabic',fontWeight:FontWeight.bold,fontSize: 16,letterSpacing:1.5,color: Color.fromRGBO(123, 135, 148,10)),)),
                      SizedBox(height: 7),
                      Container(

                        height: height*0.1,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: height*0.1*0.5,
                              child: Container(
                                color: Colors.black,
                                width: width,
                                height: 2,
                              ),
                            ),
                            Positioned(
                              top: height*0.1*0.02,
                              child: Container(

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    StatusCheked(width: width, height: height),
                                    SizedBox(width: (width-75-width*0.2)/4),
                                    StatusCheked(width: width, height: height),
                                    SizedBox(width: (width-75-width*0.2)/4),
                                    StatusCheked(width: width, height: height),
                                    SizedBox(width: (width-50-width*0.2)/4),
                                    StatusCheked(width: width, height: height),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Settings(SettingsTitle:'إتمام ملء معطيات الحساب الشخصي',width: width, height: height, colorText: Colors.black,),
                      SizedBox(height:20),
                      Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:5,bottom:10.0),
                                child: Align(alignment:Alignment.centerLeft,child: Text('إعدادات الحساب',style: TextStyle(fontFamily: 'arabic',fontWeight:FontWeight.bold,fontSize: 16,letterSpacing:1.5,color: Color.fromRGBO(123, 135, 148,10)),)),
                              ),
                              Settings(SettingsTitle:'المعلومات الخاصة',width: width,colorText: Color.fromRGBO(50, 63, 75, 10), height: height),
                              GestureDetector(onTap:() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DemandesAssoc(),
                                  ),
                                );
                              },
                                  child: Settings(SettingsTitle:'تتبع الطلبات',width: width,colorText: Color.fromRGBO(50, 63, 75, 10), height: height)),

                              Settings(SettingsTitle:'تسجيل الخروج',width: width,colorText: Colors.blueAccent, height: height),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
                          builder: (context) => IndividuLogin(),
                        ),
                      );
                    },icon: SvgPicture.asset('assets/Arrow.svg',))),
                backgroundColor: Colors.transparent, //No more green
                elevation: 0.0, //Shadow gone
              ),
            ),),
        ], ),
    );
  }
}





