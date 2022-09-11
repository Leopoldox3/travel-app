import 'package:flutter/material.dart';

class CardImageVertical extends StatelessWidget {
  CardImageVertical(this.pathImage,{Key? key}) : super(key: key);
  String pathImage = "assets/img/blackpink.jpeg";

  @override
  Widget build(BuildContext context) {
    final card = Container(
    height: 200.0,
    //width: 00.0,
    margin: const EdgeInsets.only(
      top:10.0,
      bottom: 60,
      //left: 20.0
      ),
      decoration: BoxDecoration(image:
       DecorationImage(
       fit: BoxFit.cover,
        image: AssetImage(pathImage)
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow> [
          BoxShadow(
          color: Colors.black,
          blurRadius: 15.0,
          offset: Offset(0.0, 7.0)
        ),
        ],
      ),
  );
  return card;
  }
}