import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:platzi_trips_app/User/ui/widgets/zlideMembers.dart';

class ZlideMembersList extends StatelessWidget {
  const ZlideMembersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ListView(
      children:[
        ZlideMembers("LeoGod", "MidLaner", "Inmortal", "assets/img/leo.webp", "assets/img/inmortal.webp"),
        ZlideMembers("Kkd", "HardCarry", "Arconte", "assets/img/kkd.png", "assets/img/arconte.png"),
        ZlideMembers("Punku", "HardWard", "Guardian", "assets/img/punku.png", "assets/img/guardian.png"),
        ZlideMembers("Doek", "Support", "Heraldo", "assets/img/doek.png", "assets/img/heraldo.png"),
        ZlideMembers("Xavi", "OffLaner", "Cruzado", "assets/img/xavi.png", "assets/img/cruzado.png"),
        ZlideMembers("Drako", "Standin", "Heraldo", "assets/img/drako.png", "assets/img/heraldo.png")
      ],
    );
  }
}