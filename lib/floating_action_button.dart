import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FloatingActionBotonGreen extends StatefulWidget {
  const FloatingActionBotonGreen({Key? key}) : super(key: key);

  @override
  State<FloatingActionBotonGreen> createState() =>
      _FloatingActionBotonGreenState();
}

class _FloatingActionBotonGreenState extends State<FloatingActionBotonGreen> {
  bool isFav = false;

  void onPressedFav() {
    setState(() {
      if (isFav) {
        isFav = false;
      } else {
        isFav = true;
      }
    });

    //ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Te gusta esta foto")));
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xFF11DA53),
      child: IconButton(
        onPressed: onPressedFav,
        color: Colors.white,
        icon: Icon(
          isFav ? Icons.favorite : Icons.favorite_border,
        ),
      ),
    );

    
  }
}
