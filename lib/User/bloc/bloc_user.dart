import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Place/repository/firebase_storage_repository.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';
import 'package:platzi_trips_app/User/model/user.dart' as Model;

// LOS BLOC SE CONECTAN CON LA INTERFAZ DE USUARIO
class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  //Flujo de datos - Streams
  //Stream - Firebase
  //StreamController
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;
  Future<User?> get currentUser async => FirebaseAuth.instance.currentUser;
  //Casos de uso
  //1. SignIn a la aplicacion Google
  Future<UserCredential> signIn() => _auth_repository.signInFirebase();
  //2. Registrar usuario en bd

  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(Model.User user) =>
      _cloudFirestoreRepository.updateUserDataFirestore(user);
  Future<void> updatePlaceData(Place place)=> _cloudFirestoreRepository.updatePlaceData(place);

  final _firebaseStorageRepository = FirebaseStorageRepository();
  Future<UploadTask>uploadFile(String path, File image)=> _firebaseStorageRepository.uploadFile(path,image);
  // 3. 
  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {}
}
