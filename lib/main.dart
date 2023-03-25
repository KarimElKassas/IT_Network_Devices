import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:it_network/core/services/prefs_helper.dart';
import 'package:it_network/core/services/service_locator.dart';
import 'package:it_network/presentation/screens/home.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Preference.load();
  ServiceLocator().setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Network',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}