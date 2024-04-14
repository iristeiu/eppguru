import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAwze1YroKUyXxo6vYRAUDqt6thEaV2a34",
            authDomain: "quizapp-8be66.firebaseapp.com",
            projectId: "quizapp-8be66",
            storageBucket: "quizapp-8be66.appspot.com",
            messagingSenderId: "853141409232",
            appId: "1:853141409232:web:3e22ea2c8a6df94fcbbdd5"));
  } else {
    await Firebase.initializeApp();
  }
}
