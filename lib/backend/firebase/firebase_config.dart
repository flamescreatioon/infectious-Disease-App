import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAMjb_2jIrfkYm1Ob5g81s1UI3wBdkX31c",
            authDomain: "infectious-disease-tracker.firebaseapp.com",
            projectId: "infectious-disease-tracker",
            storageBucket: "infectious-disease-tracker.appspot.com",
            messagingSenderId: "54197815736",
            appId: "1:54197815736:web:1abf6895ae06f5d106674d",
            measurementId: "G-GF84JJ0TVF"));
  } else {
    await Firebase.initializeApp();
  }
}
