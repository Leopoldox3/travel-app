import 'package:flutter/widgets.dart';
import 'package:platzi_trips_app/Place/ui/widgets/description_place.dart';
import 'package:platzi_trips_app/Place/ui/widgets/reviewList.dart';
import 'headerAppbar.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy =
      "Nuestro segundo viaje a la ciudad de Cusco, fue una bonita experiencia, ahora estuvimos un poco mejor preparados.Y esta vez fuimos con mi mamá, siempre quiso ir a Cusco y decidimos llevarla, la pasamos super genial.. Aunque mi novia no quiso tomarse foto en Macchu Picchu porque estaba enojada ahhhhhh ahhhhhh no che cheñolcitaaaa";
  HomeTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(children: [
          DescriptionPlace("Cusco", 5,
              "Nuestro segundo viaje a la ciudad de Cusco, fue una bonita experiencia, ahora estuvimos un poco mejor preparados.Y esta vez fuimos con mi mamá, siempre quiso ir a Cusco y decidimos llevarla, la pasamos super genial.."),
          ReviewList(),
        ]),
        const HeaderAppbar(),
      ],
    );
  }
}
