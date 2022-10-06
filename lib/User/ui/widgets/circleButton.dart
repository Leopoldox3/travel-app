import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  CircleButton(
      this.mini, this.icon, this.iconSize, this.color, @required this.onPressed,
      {Key? key})
      : super(key: key);
  final VoidCallback onPressed;
  bool mini;
  var icon;
  double iconSize;
  var color;

  @override
  State<CircleButton> createState() => _CircleButtonState();
}

void onPressedButton() {}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
      backgroundColor: widget.color,
      mini: widget.mini,
      onPressed: widget.onPressed,
      heroTag: null,
      child: Icon(
        widget.icon,
        size: widget.iconSize,
        color: const Color(0xFF4268D3),
      ),
    ));
  }
}
