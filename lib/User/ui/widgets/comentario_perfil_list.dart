import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:platzi_trips_app/User/ui/widgets/comentatio_perfil.dart';

class d extends StatelessWidget {
  const d({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      //width: 350,
      child: ListView(
        padding: const EdgeInsets.all(30.0),
        scrollDirection: Axis.vertical,
        children:  [
            ComentarioPerfil(),
             ComentarioPerfil(),
              ComentarioPerfil(),
               ComentarioPerfil()
        ],
      ),
    );
    
  
  }
}