import 'package:flutter/material.dart';
import 'package:flutter_project/constants/constants.dart';
import 'package:flutter_project/presentation/home.dart';
import 'package:flutter_project/presentation/movie_details.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: RoutesConstants.home,
      routes: {
        RoutesConstants.home: (context) => const Home(),
        RoutesConstants.details: (context) => const MovieDetails()
      },
    );
  }
}
