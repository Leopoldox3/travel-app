import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ZlideMembers extends StatelessWidget {
  String nick = "LeoGod";
  String role = "mid";
  String medalla = "Inmortal";
  String photo = "assets/img/rose.jpg";
  String photoMedal = "assets/img/inmortal.webp";
  
  ZlideMembers(this.nick,this.role,this.medalla,this.photo,this.photoMedal,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final nickName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: DefaultTextStyle(
         style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w900   
            ),
        child: Text(
          nick,
          
          ),
      ),
    );
    
    final roleGame = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: DefaultTextStyle(
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
            color: Color(0xFFa3a5a7)
            ),
        child: Text(
          role,
          
          ),
      ),
    );

    final medallaGame = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: DefaultTextStyle(
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Colors.white,
            fontWeight: FontWeight.w900,
            ),
          child: Text(
          medalla,
          ),
      ),
    );

    final playerPhoto = Container(
      margin: const EdgeInsets.all(20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image:DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(photo) 
        )
      ),
    );

    final medallaPhoto = Container(
      width: 50.0,
      height: 50.0,
      margin: const EdgeInsets.only(right: 35),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image:DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(photoMedal) 
        )
      ),
    );
  
    

    final userDetailsDota = Expanded(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        nickName,
        roleGame,
         medallaGame,
       ], 
      ),
    );
    return Column(
      children: [
        Row(
          children: [
            playerPhoto,
            userDetailsDota,
            medallaPhoto
          ],
        ),
       const Divider(color: Colors.white,)
      ],
    );
  }
}