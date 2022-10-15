import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleHeader extends StatelessWidget {
  final String title;

  const TitleHeader({Key? key, required this.title}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize:  30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold
       ),
     );
  }
}