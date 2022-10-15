import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSingInt = GoogleSignIn();

// API CONTIENE TODA LA LOGICA DE NEGOCIO DE LA CONEXION CON FIREBASE
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow(account)
    final GoogleSignInAccount? googleUser = await googleSingInt.signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await _auth.signInWithCredential(credential);
  }

  signOut() async {
    await _auth.signOut().then((value) => print("Sesión cerrada"));
    googleSingInt.signOut();
    print("Sesiones cerradas");
  }
}
