import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAIsGKs8U5QGpDAqaRfQY9F775z06WFO-s",
            authDomain: "purrfecthealth-a8216.firebaseapp.com",
            projectId: "purrfecthealth-a8216",
            storageBucket: "purrfecthealth-a8216.firebasestorage.app",
            messagingSenderId: "352121559466",
            appId: "1:352121559466:web:2ba8a94a8a020c8c2573d3"));
  } else {
    await Firebase.initializeApp();
  }
}
