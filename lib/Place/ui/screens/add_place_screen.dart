import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Place/ui/widgets/cardImage.dart';
import 'package:platzi_trips_app/Place/ui/widgets/title_input_location.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/buttonPurple.dart';
import 'package:platzi_trips_app/gradient_back.dart';
import 'package:platzi_trips_app/title_header.dart';
import 'package:platzi_trips_app/text_input.dart';

class AddPlacesScreen extends StatefulWidget {
  File? image;

  AddPlacesScreen({
    Key? key,
    required this.image,
  });

  @override
  State<AddPlacesScreen> createState() => _AddPlacesScreenState();
}

class _AddPlacesScreenState extends State<AddPlacesScreen> {
  @override
  Widget build(BuildContext context) {
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();
    UserBloc userBloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      body: Stack(
        children: [
          GradientBack(height: 300.0),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: IconButton(
                    icon: const Icon(Icons.keyboard_arrow_left,
                        color: Colors.white, size: 45),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Flexible(
              child: Container(
               // width: screenWidth,
              child: Container(
                padding: const EdgeInsets.only(
                  top:45.0,
                  left: 20.0,
                  right: 0.0),
                  child: const TitleHeader(title: "Add a new Place"),
              ),
              ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 120.0, bottom: 20.0),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: CardImageWithFabIcon(pathImage: widget.image!.path, iconData: Icons.camera_alt, width: 350.0, height: 250.0, onPressedFabIcon: () {  },),
                ),
                Container(
                  margin: const EdgeInsets.only(top:20.0,bottom: 20.0),
                  child: TextInput1(
                    hintText: "Title",
                    inputType: null,
                    maxLines: 1,
                    controller:_controllerTitlePlace,
                  )
                ),
                TextInput1(
                    hintText: "Description",
                    inputType: TextInputType.multiline,
                    maxLines: 4,
                    controller:_controllerDescriptionPlace
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: const TextInputLocation(
                    hintText: "Add Location",
                    iconData: Icons.location_on,
                  ),
                ),
                Container(
                  width: 70.0,
                  child: ButtonPurple(buttonText: "Add Place",
                  onPressed: () {
                   
                    // ID actual del usuario
                    userBloc.currentUser.then((user) {
                      if(user != null){
                        //1-Firebase Storage
                        //url img
                      }
                    });
                    

                    //2-Cloud  Firestore
                    //Place - tittle, description, url, userOwner, likes
                    userBloc.updatePlaceData(Place(
                      name: _controllerTitlePlace.text,
                       description: _controllerDescriptionPlace.text,
                       likes: 0,
                       urlImage: "",
                       userOwner: null
                         )).whenComplete(() => print("TERMINO")); Navigator.pop(context);
                  }),
                  ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
