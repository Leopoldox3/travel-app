import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {

  String pathImage = "assets/img/rose.jpg";
  String name =  "Leo";
  String comment = "Blackpink best kpop group ever";
  
    ProfileInfo(this.pathImage,this.name,this.comment,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final photo = Container(
      margin: const EdgeInsets.only(left: 10,top: 10),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2.0,
          style: BorderStyle.solid
        ),
        shape: BoxShape.circle,
        image:DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage) 
        )
      ),
    );

  final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(name,
      textAlign: TextAlign.left,
      style:const TextStyle(
        color: Colors.white,
        fontFamily: "Lato",
        fontSize: 15.0)
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(comment,
      textAlign: TextAlign.left,
      style:const TextStyle(
         color: Color(0xFFa3a5a7),
        fontFamily: "Lato",
        fontSize: 13.0,
        fontWeight: FontWeight.w900
        )
      ),
    );



    final userProfileDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userComment,
      
      ],

    );
    return Row(
      children: [
        photo,
        userProfileDetails
      ],
    );

  }
}