import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:platzi_trips_app/Place/ui/widgets/review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
  return Column(
    children: [
      Review("assets/img/china.png", "Esperanza", "1 review 5 photos", "Mi hijo el maás guapo"),
      Review("assets/img/lupe.png", "Lupe","1 review 5 photos", "Donde esta mi hijita no se ve"),
      Review("assets/img/miri.png", "Miri","1 review 5 photos", "ahhhh ahhhhhhh ahhhhhh"),
      Review("assets/img/leo.png", "Leonardo","1 review 5 photos", "Debería ser modelo..")
      
     ],
     );
  }
}