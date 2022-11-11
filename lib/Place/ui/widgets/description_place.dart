import 'package:flutter/material.dart';
import 'package:platzi_trips_app/buttonPurple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int starts;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace, {Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
  
    final description = Container(margin:const EdgeInsets.all(20.0),child: Text(descriptionPlace,
    style:const TextStyle(fontSize: 14.0, fontFamily:"Lato"), 
      ),
    );

    final startHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(Icons.star_half_outlined,
      color: Colors.yellow),
    );

    final startBorder= Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(Icons.star_border,
      color: Colors.yellow),
    );

    final start = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(Icons.star_outlined,
      color: Colors.yellow),
    );

    final titleStarts = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
            ),
            child: Text(namePlace,
            style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
            fontFamily: "Lato"
            ),
            textAlign: TextAlign.left,
            ),
            
        ),
        Row(
          children: [
            start,
            start,
            start,
            start,
           startHalf
          ],
        )
      ],
    );
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      titleStarts,
      description,
      ButtonPurple(buttonText: "Navigate",onPressed: (() {
        
      }))]
    );
  }
}
