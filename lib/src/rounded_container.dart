import 'package:flutter/material.dart';

class RoundedContainer extends StatefulWidget {
  static String tag = '/RoundedContainer';
  final double? height;
  final double? width;
  final Color? color;
  final Color? textColor;
  final String? text;

  RoundedContainer({this.height, this.width, this.color, this.textColor, this.text});

  @override
  RoundedContainerState createState() => RoundedContainerState();
}

class RoundedContainerState extends State<RoundedContainer> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async{
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height:widget.height ?? 500,
      width : widget.width ?? 500,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.color ?? Colors.pink,
      ),
      child: Text(widget.text ?? '',style: TextStyle(color: widget.color ?? Colors.black)),
    );
  }
}

