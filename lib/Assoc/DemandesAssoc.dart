
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class DemandesAssoc extends StatefulWidget {
  @override
  _DemandesAssocState createState() => _DemandesAssocState();
}
class _DemandesAssocState extends State<DemandesAssoc> {
  int _body=1;
  String _active='المساهمة';
  Widget bodyFunction(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    switch (_body) {
      case 0:
        return DemandeItem(height: height, width: width,type_of_demande:"مريض بدون إعالة",demandeur_name:"معاذ",activity_name:"مشروع مدر للدخل");
        break;
      case 1:
        return DonationItem(height: height, width: width,type_of_don:"متبرع",donateur_name:"مصعب",donation_name:"نشاط عيد الاضحى");
        break;
      default:
        return DonationItem(height: height, width: width,type_of_don:"متبرع",donateur_name:"مصعب",donation_name:"نشاط عيد الاضحى");
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
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(top:70),
                  child: Center(
                    child: Column(
                      children: [
                      Text('لائحة الطلبات', style: TextStyle(fontSize: 25, fontFamily: 'boldarabic', fontWeight: FontWeight.bold)),
                        SizedBox(height: height*0.02,),

                      ],
                    ),
                  ),
                ),

              ),
              Positioned(
                child:AppBar(
                  leading: Transform.translate(
                      offset: Offset(-10,0),
                      child: IconButton(onPressed:() {
                        Navigator.pop(context);
                      },icon: SvgPicture.asset('assets/Arrow.svg',))),
                  backgroundColor: Colors.transparent, //No more green
                  elevation: 0.0, //Shadow gone
                ),
              )
            ],
          ),
          Container(
            color: Colors.grey,
            width: width,
            height: 0.8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 30),
            child: Container(
              height: height*0.05,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                children: <Widget>[
                  SuiviAide(event:ChangeBody,action:active,
                      active:_active=='المساعدة'?true:false,
                      text:'المساعدة',height: height, width: width),
                  Container(width: 1,height: height*0.05,color:Colors.black45,),
                  SuiviDemande(event:ChangeBody,action:active,
                      active:_active=='المساهمة'?true:false,
                      text:'المساهمة',height: height, width: width),




                ],
              ),
            ),
          ),
          bodyFunction(context),
        ],
      ),

    );
  }
}

class DonationItem extends StatelessWidget {
  const DonationItem({
    Key key,
    this.donation_name,
    this.donateur_name,
    this.type_of_don,
      this.height,
      this.width,
  }) : super(key: key);
  final String donation_name;
  final String donateur_name;
  final String  type_of_don;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Container(height:height*0.1,width: width,
        child:
        Row(
          children: [
            Container(width: width*0.2,
            child: SvgPicture.asset('assets/Small.svg')),
            SizedBox(width:width*0.02),
            Container(width: width*0.2,
              child:RichText(
                text: TextSpan(
                    text:'$donateur_name\n',
                    style: TextStyle(fontFamily:'arabic',color: Colors.black,fontSize: 18, height: 1.5, letterSpacing: 2,fontWeight: FontWeight.bold),
                    children: <InlineSpan>[
                      TextSpan(text: '$type_of_don', style: TextStyle(fontFamily:'arabic',fontSize: 12,color: Colors.grey)),
                    ]
                ),

              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right:8.0),
                  child: Container(

                      child: Text('$donation_name',
                        style: TextStyle(fontFamily:'arabic',color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,

                      ),

            ),
                )),
          ],
        ),),
    );
  }
}
class DemandeItem extends StatelessWidget {
  const DemandeItem({
    Key key,
      this.type_of_demande,
      this.demandeur_name,
      this.activity_name,
      this.height,
      this.width,
  }) : super(key: key);
  final String type_of_demande;
  final String demandeur_name;
  final String activity_name;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Container(height:height*0.1,width: width,
        child:
        Row(
          children: [
            Container(width: width*0.2,
                child: SvgPicture.asset('assets/Small.svg')),
            SizedBox(width:width*0.02),
            Container(width: width*0.25,
              child:RichText(
                text: TextSpan(
                    text:'$demandeur_name\n',
                    style: TextStyle(fontFamily:'arabic',color: Colors.black,fontSize: 18, height: 1.5, letterSpacing: 2,fontWeight: FontWeight.bold),
                    children: <InlineSpan>[
                      TextSpan(text: '$type_of_demande', style: TextStyle(fontFamily:'arabic',fontSize: 12,color: Colors.grey, )),
                    ]
                ),

              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right:8.0),
                  child: Container(

                    child: Text('$activity_name',
                      style: TextStyle(fontFamily:'arabic',color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,

                    ),

                  ),
                )),
          ],
        ),),
    );
  }
}


class SuiviAide extends StatefulWidget {
  SuiviAide({
    Key key,
      this.event,
      this.text,
      this.action,
      this.active,
      this.height,
      this.width,
  }) : super(key: key);
  final ValueChanged<String> action;
  final ValueChanged<int> event;
  final bool active;
  final String text;
  final double height;
  final double width;

  @override
  _SuiviAideState createState() => _SuiviAideState();
}

class _SuiviAideState extends State<SuiviAide> {

  void HandleTap(){
    setState(() {
      widget.action(widget.text);
      widget.event(0);
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: HandleTap,
      child: Container(
        height: widget.height*0.05,
        width: (widget.width-50)/2,
        decoration: BoxDecoration(
          color: widget.active?Colors.blueAccent:Colors.transparent,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9),topLeft: Radius.circular(9)),

        ),
        child: Center(
          child:Text((widget.text),
            style: TextStyle(color: widget.active?Colors.white:Colors.black,fontFamily: 'arabic',fontWeight: FontWeight.bold),
        ),
        ),
      ),
    );
  }
}






class SuiviDemande extends StatefulWidget {
  SuiviDemande({
    Key key,
      this.text,
      this.action,
      this.active,
      this.event,
      this.height,
      this.width,
  }) : super(key: key);
  final ValueChanged<String> action;
  final ValueChanged<int> event;
  final bool active;
  final String text;
  final double height;
  final double width;

  @override
  _SuiviDemandeState createState() => _SuiviDemandeState();
}

class _SuiviDemandeState extends State<SuiviDemande> {
  void HandleTap(){
    setState(() {
      widget.action(widget.text);
      widget.event(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: HandleTap,
      child: Container(
        height: widget.height*0.05,
        width: (widget.width-36)/2,
        decoration: BoxDecoration(
          color: widget.active?Colors.orangeAccent:Colors.transparent,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(9),topRight: Radius.circular(9)),

        ),
        child: Center(child:Text((widget.text),
          style: TextStyle(color: widget.active?Colors.white:Colors.black,fontFamily: 'arabic',fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}


