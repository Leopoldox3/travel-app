import 'package:flutter/material.dart';

class GradienBackProfile extends StatelessWidget {
   GradienBackProfile(this.title,{Key? key}) : super(key: key);
   String title = "Profile";
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 370.0,
      decoration: 
      const BoxDecoration(
      gradient: LinearGradient(
       colors: [ 
        Color(0xFF4268D3),
        Color(0xFF584CD1)
        ],
        begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0,0.6],
            tileMode: TileMode.clamp
      )
      ),

      alignment: const Alignment(-0.9, -0.8),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
          ),
        ),


    );
  }
}