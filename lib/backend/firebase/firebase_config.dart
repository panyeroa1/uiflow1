import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDcS1Kg0vpggkLzMSc_T7WzxqBhTQSdVn0",
            authDomain: "ai-connect-2nbpnn.firebaseapp.com",
            projectId: "ai-connect-2nbpnn",
            storageBucket: "ai-connect-2nbpnn.appspot.com",
            messagingSenderId: "704482029158",
            appId: "1:704482029158:web:081040cf8498a703e447a7"));
  } else {
    await Firebase.initializeApp();
  }
}
