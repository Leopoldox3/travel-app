import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {
  ButtonGreen(
      {required this.text,
      required this.onPressed,
      this.width = 0.0,
      this.height = 0.0});

  final String text;
  final VoidCallback onPressed;
  double width;
  double height;

  @override
  State<ButtonGreen> createState() => _ButtonGreenState();
}

class _ButtonGreenState extends State<ButtonGreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: const LinearGradient(
              colors: [Color(0xFFa7ff84), Color(0xFF1cbb78)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
                fontSize: 18.0, fontFamily: "Lato", color: Colors.white),
          ),
        ),
      ),
    );
  }
}
