import 'package:flutter/material.dart';
import 'package:platzi_trips_app/floating_action_button.dart';

class CardImageWithFabIcon extends StatelessWidget {

  final double? height;
  final double? width;
  final String pathImage;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;
  CardImageWithFabIcon({Key? key, 
   
    required this.pathImage,
    this.width,
    this.height,
    required this.onPressedFabIcon,
    required this.iconData,
  
  }) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
  
  final card = Container(
    height: height,
    width: width,
    margin: const EdgeInsets.only(
      left: 20.0
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

    return Stack(
      alignment: const Alignment(0.9,1.1),
      children: [
        card,
        FloatingActionButtonGreen(iconData: iconData, onPressed: onPressedFabIcon)
      ],

    );
  }
}