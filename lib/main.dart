import 'package:camera/camera.dart';
import 'package:face_recognition_project/View/face_match_live_view.dart';
import 'package:face_recognition_project/View/face_match_view.dart';
import 'package:face_recognition_project/View/facedetector.dart';
import 'package:flutter/material.dart';
import 'View/home_view.dart';
//import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      color: Colors.amber,
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        // '/login': (context) => const LoginPage(),
        // '/register': (context) => const RegisterPage(),
        '/homeScreen': (context) => const HomeScreen(),
        '/fromGalley': (context) => const RecognitionScreen(),
        '/fromLiveCamera': (context) => FaceDetectorView(),
      },
    ),
  );
}
