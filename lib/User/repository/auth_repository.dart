import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/User/repository/firebase_auth_api.dart';

// NOTA: LA CLASE REPOSITORY NOS AYUDARA A CONTROLAR LA FUENTES DE DATOS
// this file is used to change the data source
class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<UserCredential> signInFirebase() =>
      _firebaseAuthAPI.signInWithGoogle();

  signOut() => _firebaseAuthAPI.signOut();
}
