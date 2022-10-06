import 'package:flutter/material.dart';
import '../../model/user.dart';

class ProfileInfo extends StatelessWidget {
  User user;
  ProfileInfo(@required this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white, width: 2.0, style: BorderStyle.solid),
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            // image: AssetImage(user.photoURL),
            image: NetworkImage(user.photoURL)),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(user.name,
          textAlign: TextAlign.left,
          style: const TextStyle(
              color: Colors.white, fontFamily: "Lato", fontSize: 15.0)),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(user.email,
          textAlign: TextAlign.left,
          style: const TextStyle(
              color: Color(0xFFa3a5a7),
              fontFamily: "Lato",
              fontSize: 13.0,
              fontWeight: FontWeight.w900)),
    );

    final userProfileDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userComment,
      ],
    );
    return Row(
      children: [photo, userProfileDetails],
    );
  }
}
