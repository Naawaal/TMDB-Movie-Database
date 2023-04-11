import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:movie_database/views/screens/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomepageScreen(),
      title: 'Movie DataBase',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xff282A37),
      ),
    );
  }
}
