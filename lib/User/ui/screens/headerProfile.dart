import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/User/ui/widgets/profle_places_list.dart';
import 'package:platzi_trips_app/User/ui/widgets/button_bar.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_background.dart';
import 'package:platzi_trips_app/User/ui/screens/profile_info.dart';
import '../../model/user.dart';

class HeaderProfile extends StatelessWidget {
  late UserBloc userBloc;
  late User user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
          case ConnectionState.none:
            return const CircularProgressIndicator();
          case ConnectionState.active:
          case ConnectionState.done:
            return showProfileData(snapshot);
        }
      },
    );
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No logueado");
      return Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(children: const [
          CircularProgressIndicator(),
          Text("No se pudo cargar la información.Logueate")
        ]),
      );
    } else {
      print("Logueado");
      print(snapshot.data);
      user = User(
          uid: snapshot.data.uid,
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoURL);
      const title = Text(
        'Profile',
        style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      );
      return Stack(
        children: [
          ProfileBackground(),
          SafeArea(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: title,
                ),
                ProfileInfo(user),
                CircleButtonList(),
                ProfilePlacesList(),
              ],
            ),
          ),
        ],
      );
    }
  }
}
