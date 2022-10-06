import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/Place/ui/widgets/cardImage.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/c1.png"),
          CardImage("assets/img/c2.png"),
          CardImage("assets/img/c3.png"),
          CardImage("assets/img/c4.png"),
          CardImage("assets/img/c5.png")
        ],
      ),
    );
  }
}
