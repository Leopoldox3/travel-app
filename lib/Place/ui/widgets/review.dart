import 'package:flutter/material.dart';

class Review extends StatelessWidget {

 String name = "Rose";
 String pathImage = "assets/img/rose.jpg";
 String details = "1 review 5 photos";
 String comment = "Blackpink best kpop group ever";
  Review(this.pathImage, this.name,this.details,this.comment,{Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(comment,
      textAlign: TextAlign.left,
      style:const TextStyle(
        fontFamily: "Lato",
        fontSize: 13.0,
        fontWeight: FontWeight.w900
        )
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(details,
      textAlign: TextAlign.left,
      style:const TextStyle(
        fontFamily: "Lato",
        fontSize: 13.0,
        color: Color(0xFFa3a5a7) 
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
        fontFamily: "Lato",
        fontSize: 15.0)
      ),
    );
     final startHalf = Container(
      child: const Icon(Icons.star_half_outlined,
      color: Colors.yellow),
    );

    final urserDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [
            userInfo,
            startHalf,
            startHalf,
            startHalf,
            startHalf
          ],
        ),
       userComment,  
      ],
    );
    final photo = Container(
      margin: const EdgeInsets.all(20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image:DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage) 
        )
      ),
    );
 

    final startBorder= Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(Icons.star_border,
      color: Colors.yellow),
    );

    final start = Expanded(
      child: Container(
        alignment: Alignment.centerLeft,
        child: const Icon(Icons.star_outlined,
        color: Colors.yellow),
      ),
    );
    return Row(
      children: [
        photo,
        urserDetails, 
      ],);
    
  }
}