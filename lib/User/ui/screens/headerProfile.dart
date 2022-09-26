import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/ui/widgets/cardImageVeticalList.dart';
import 'package:platzi_trips_app/User/ui/widgets/circleButtonList.dart';
import 'package:platzi_trips_app/User/ui/widgets/gradienBackProfile.dart';
import 'package:platzi_trips_app/User/ui/screens/profile_info.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        GradienBackProfile("Profile"),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:5),
            child: Column(
            children: [
              ProfileInfo("assets/img/leo.png","Leonardo","leopoldox3.lpa@gmail.com"),
              
              const CircleButtonList(),
              const SizedBox(height: 10,),
              const CardImageVerticalList(),
              
            ],
                ),
          ),
        ),
      
      ],
    ); 
  }
}