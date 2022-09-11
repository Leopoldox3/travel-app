import 'package:flutter/material.dart';
import 'package:platzi_trips_app/cardImageVeticalList.dart';
import 'package:platzi_trips_app/circleButtonList.dart';
import 'package:platzi_trips_app/gradienBackProfile.dart';
import 'package:platzi_trips_app/profile_info.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        GradienBackProfile("Profile"),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:60),
            child: Column(
            children: [
              ProfileInfo("assets/img/leo.png","Leonardo","leopoldox3.lpa@gmail.com"),
              const CircleButtonList(),
              const CardImageVerticalList(),
              
            ],
                ),
          ),
        ),
      
      ],
    ); 
  }
}