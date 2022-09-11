import 'package:flutter/cupertino.dart';
import 'cardImageVertical.dart';


class CardImageVerticalList extends StatelessWidget {
  const CardImageVerticalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 470,
      //width: 350,
      child: ListView(
        padding: const EdgeInsets.all(30.0),
        scrollDirection: Axis.vertical,
        children:  [
            CardImageVertical("assets/img/c1.png"),
            CardImageVertical("assets/img/c2.png"),
            CardImageVertical("assets/img/c3.png"),
            CardImageVertical("assets/img/c4.png"),
            CardImageVertical("assets/img/c5.png")
        ],
      ),
    );
  }
}