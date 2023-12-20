import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBPVMTK7sY-yM55241H6JNiDCps7d4FR44",
            authDomain: "losttechtest.firebaseapp.com",
            projectId: "losttechtest",
            storageBucket: "losttechtest.appspot.com",
            messagingSenderId: "405627080645",
            appId: "1:405627080645:web:d772a849b1363746b085ac",
            measurementId: "G-EQWCPSMF2E"));
  } else {
    await Firebase.initializeApp();
  }
}
