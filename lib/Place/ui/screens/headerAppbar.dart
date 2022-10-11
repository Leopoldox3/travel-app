import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/Place/ui/widgets/cardImageList.dart';
import 'package:platzi_trips_app/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack(height: 250), const CardImageList()],
    );
  }
}
