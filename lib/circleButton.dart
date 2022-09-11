import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CircleButton extends StatefulWidget {
 CircleButton(this.mini,this.icon,this.iconSize,this.color,{Key? key}) : super(key: key);

  bool mini;
  var icon;
  double iconSize;
  var color;
  
  @override
  State<CircleButton> createState() => _CircleButtonState();

}

void onPressedButton() {


  }

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {


     return Expanded(
      child: FloatingActionButton(
        backgroundColor: widget.color,
        mini: widget.mini,
        onPressed: onPressedButton,
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: Color(0xFF4268D3),
        ),
      )
    );
  }
}