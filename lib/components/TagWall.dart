import 'package:flutter/material.dart';
class TagWall extends StatefulWidget {
  const TagWall({
    Key key,
      this.width,
      this.height,
      this.color,
      this.action,
      this.active,
      this.event,
      this.colortext,
      this.text,
      this.index,
      this.textSize
  }) : super(key: key);
  final String text;
  final ValueChanged<String> action;
  final ValueChanged<int> event;
  final bool active;
  final double width;
  final int index;
  final double textSize;
  final double height;
  final Color color;
  final Color colortext;


  @override
  _TagWallState createState() => _TagWallState();
}

class _TagWallState extends State<TagWall> {
  void HandleTap(){
    setState(() {
      widget.action(widget.text);
      widget.event(widget.index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: HandleTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.active?widget.color:Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color:Colors.transparent),
        ),
        child: Center(child: Text("${widget.text}", style: TextStyle(fontSize: widget.textSize,color: widget.active?widget.colortext:Colors.black, fontFamily: 'boldarabic'))),
      ),
    );
  }
}