import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/button_green.dart';
import 'package:platzi_trips_app/gradient_back.dart';
import 'package:platzi_trips_app/platzi_trips.dart';
import 'package:platzi_trips_app/User/model/user.dart' as Model;

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late UserBloc userBloc;
  double? screenWidth;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, snapshot) {
          // snpashot -data -Object User
          if (!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          } else {
            return const PlatziTips();
          }
        });
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        children: [
          GradientBack(height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                    width: screenWidth! -
                        (screenWidth! /
                            14), //hago esta resta para colocarle margenes horizontales y ademas simular diferentes width de pantallas
                    child: const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Welcome \n This is your Travel App',
                        style: TextStyle(
                            fontFamily: 'lato',
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonGreen(
                    text: "Login with Gmail",
                    onPressed: () {
                      userBloc.signOut();

                      userBloc.signIn().then((UserCredential? user) {
                        userBloc.updateUserData(
                          Model.User(
                            uid: user?.user!.uid,
                            name: (user?.user!.displayName).toString(),
                            email: (user?.user!.email).toString(),
                            photoURL: (user?.user!.photoURL).toString(),
                          ),
                        );
                      });
                    },
                    width: 300.0,
                    height: 50.0,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
