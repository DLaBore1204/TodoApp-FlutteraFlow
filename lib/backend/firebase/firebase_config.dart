import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCjQldGt6W2RCjrjS9oPcBkvNFp5a5Lstg",
            authDomain: "todo-eoe98h.firebaseapp.com",
            projectId: "todo-eoe98h",
            storageBucket: "todo-eoe98h.firebasestorage.app",
            messagingSenderId: "493624177027",
            appId: "1:493624177027:web:0570643b6906f822f206b6"));
  } else {
    await Firebase.initializeApp();
  }
}
