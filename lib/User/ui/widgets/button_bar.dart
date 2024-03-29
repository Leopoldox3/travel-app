import 'dart:io';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platzi_trips_app/Place/ui/screens/add_place_screen.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'circleButton.dart';

class CircleButtonList extends StatelessWidget {
  late UserBloc userBloc;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            CircleButton(true, Icons.vpn_key, 20.0,
                const Color.fromRGBO(255, 255, 255, 0.6), () => {}),
            CircleButton(
                false, Icons.add, 40.0, const Color.fromRGBO(255, 255, 255, 1),
                () {
              //porque afecta el file? de add_place_screen aqui
             picker.pickImage(
              source: ImageSource.camera)
              .then((image) => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          AddPlacesScreen(image:File(image!.path))))
               .catchError((onError)=> print(onError))
              });
              

              
            }),
            CircleButton(
                true,
                Icons.exit_to_app,
                20.0,
                const Color.fromRGBO(255, 255, 255, 0.6),
                () => {userBloc.signOut()}),
          ],
        ));
  }
}
