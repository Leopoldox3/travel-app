import 'package:flutter/material.dart';

class TextInput1 extends StatelessWidget {

  final String hintText;
  final TextInputType? inputType;
  final TextEditingController controller;
  int maxLines = 1;

  TextInput1({
    Key?key,
    required this.hintText,
    required this.inputType,
    required this.controller,
    required this.maxLines
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.0, left: 20.0),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: "Lato",
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold
        ),

        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFFFFFFF),
          border: InputBorder.none,
          hintText: hintText,
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