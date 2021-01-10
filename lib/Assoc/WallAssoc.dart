
import 'package:cindh_ui/Assoc/EditActivity.dart';
import 'package:cindh_ui/components/SearchBarActivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WallAssoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top:70,left:20,right: 20),
                    child: Column(
                      children: [
                        Align(alignment:Alignment.topRight,
                    child: Text('لائحة الأنشطة', style: TextStyle(fontSize: 32, fontFamily: 'boldarabic', fontWeight: FontWeight.bold),)),
      SizedBox(height: height*0.02,),

                      ],
                    ),
                  ),
                ),
                AppBar(
                  leading: Transform.translate(
                      offset: Offset(-10,0),
                      child: IconButton(onPressed:() {
                        Navigator.pop(context);
                      },icon: SvgPicture.asset('assets/Arrow.svg',))),
                  backgroundColor: Colors.transparent, //No more green
                  elevation: 0.0, //Shadow gone
                ),
             ],
    ),
            SearchBarActivity (width: width*0.9, height: height*0.075, title: '',text:'بحث', image: 'assets/Search.svg',img_height: 29, Hint: 'بحث',),
            SizedBox(height: height*0.05,),
            Align(alignment:Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('نوع النشاط', style: TextStyle(fontSize: 20, fontFamily: 'boldarabic', fontWeight: FontWeight.bold),),
                )),
            GridView.count(
              padding: EdgeInsets.only(top:height*0.02),
              childAspectRatio: (width/4)/(height*0.05),
              crossAxisCount: 2 ,
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0,right: 10,left: 10),
                  child:ActivityType(colorLogo:Colors.blue,text:'مشروع مستدام', image: 'assets/default.svg',img_height: 29),

                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0,right: 10,left: 10),
                  child: ActivityType(colorLogo:Colors.red,text:'تبرع بالدم', image: 'assets/default.svg',img_height: 29),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0,right: 10,left: 10),
                  child: ActivityType(colorLogo:Colors.lightGreen,text:'حملة تحسيسية', image: 'assets/default.svg',img_height: 29),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0,right: 10,left: 10),
                  child: ActivityType(colorLogo:Colors.yellowAccent,text:'قافلة طبية', image: 'assets/default.svg',img_height: 29),
                ),

              ],
            ),
            SizedBox(height: height*0.01,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment:Alignment.topRight,
                  child: Text('حديثة العهد', style: TextStyle(fontSize: 20, fontFamily: 'boldarabic', fontWeight: FontWeight.bold),)),
            ),
            Container(
              height: height*0.5,
              child: GridView.count(
                padding: EdgeInsets.only(top:height*0.02),
                childAspectRatio: (width/15)/(height*0.04),
                crossAxisCount: 2 ,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0,right: 10,left: 10),
                    child:GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditActivity(),
                            ),
                          );
                        },
                        child: Activity(colorLogo:Colors.blue,text:'مشروع مستدام', image: 'assets/default.svg',img_height: 29)),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0,right: 10,left: 10),
                    child: Activity(colorLogo:Colors.red,text:'تبرع بالدم', image: 'assets/default.svg',img_height: 29),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0,right: 10,left: 10),
                    child: Activity(colorLogo:Colors.lightGreen,text:'حملة تحسيسية', image: 'assets/default.svg',img_height: 29),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0,right: 10,left: 10),
                    child: Activity(colorLogo:Colors.yellowAccent,text:'قافلة طبية', image: 'assets/default.svg',img_height: 29),
                  ),

                ],
              ),
            ),
          ],
        ),


      ),

    );
  }
}


class ActivityType extends StatelessWidget {
  const ActivityType({
    Key key,
      this.text,
      this.image,
      this.img_height,
      this.colorLogo,
  }) : super(key: key);

  final Color colorLogo;
  final String text;
  final String image;
  final double img_height;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right:8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: width/8,
              height: height,
              decoration: BoxDecoration(
                color: colorLogo,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9),topLeft:Radius.circular(9)),
              ),

            ),
            Text('$text', style: TextStyle(fontSize:13, fontFamily: 'arabic',color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
class Activity extends StatelessWidget {
  const Activity({
    Key key,
      this.text,
      this.image,
      this.img_height,
      this.colorLogo,
  }) : super(key: key);

  final Color colorLogo;
  final String text;
  final String image;
  final double img_height;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right:8.0),
        child: Container(
          width: width/8,
          height: height,
          decoration: BoxDecoration(
            color: colorLogo,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9),topLeft:Radius.circular(9)),
          ),

        ),
      ),
    );
  }
}

