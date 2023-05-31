import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mygrow_admin/homescreen.dart';

import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Admin",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
