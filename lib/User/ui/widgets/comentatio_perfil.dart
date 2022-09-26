import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ComentarioPerfil extends StatelessWidget {
  ComentarioPerfil({Key? key}) : super(key: key);
  
  String titulo = "Cusco";
  String descripcion = "Estamos en Cusco";
  @override
  Widget build(BuildContext context) {


     final card = Container(
    height: 100.0,
    //width: 00.0,
    margin: const EdgeInsets.only(
      top:180.0,
      //left: 20.0
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow> [
          BoxShadow(
          color: Colors.black,
          blurRadius: 15.0,
          offset: Offset(0.0, 7.0)
        ),
        ],
      ),
      child: Column(
        children: [
          Text(titulo),
          Text(descripcion)
        ],
      ),
  );
    

  return card;
    
    
  }
}