import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/cardImage.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = 300.0;
    double height = 350.0;
    double left = 20.0;
    return Container(
      height: 330.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImageWithFabIcon(pathImage:"assets/img/c1.png",iconData: Icons.favorite_border, onPressedFabIcon: () {  },width: width,height: height),
          CardImageWithFabIcon(pathImage:"assets/img/c2.png",iconData: Icons.favorite_border, onPressedFabIcon: () {  },width: width,height: height),
          CardImageWithFabIcon(pathImage:"assets/img/c3.png",iconData: Icons.favorite_border, onPressedFabIcon: () {  },width: width,height: height),
          CardImageWithFabIcon(pathImage:"assets/img/c4.png",iconData: Icons.favorite_border, onPressedFabIcon: () {  },width: width,height: height),
          CardImageWithFabIcon(pathImage:"assets/img/c5.png",iconData: Icons.favorite_border, onPressedFabIcon: () {  },width: width,height: height)
        ],
      ),
    );
  }
}
