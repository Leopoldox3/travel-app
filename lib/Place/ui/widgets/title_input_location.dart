import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextInputLocation extends StatelessWidget {
  final String hintText;

  final TextEditingController? controller;
  final IconData iconData;
  
  const TextInputLocation({Key? key, required this.hintText,required, this.controller, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
      decoration: const BoxDecoration(
          boxShadow: <BoxShadow> [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 15.0,
              offset: Offset(0.0,7.0)
            )
          ]
        ),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          fontSize: 15.0,
          fontFamily: "Lato",
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold
        ),
        
decoration: InputDecoration(
  hintText: hintText,
  suffixIcon:  Icon(iconData),
  fillColor: Color(0xFFFFFFFF),
  filled: true,
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFFFFFFF)),
            borderRadius: BorderRadius.all(Radius.circular(9.0))
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFFFFFF)),
              borderRadius: BorderRadius.all(Radius.circular(9.0))
          )
  
      ),
    ),
    );
  }
}