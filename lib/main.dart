import 'package:flutter/material.dart';
import 'package:pertemuan8/HomePage.dart';
import 'package:pertemuan8/namedRoute.dart';
import 'package:pertemuan8/routeGenerator.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    '/': (context) => HomePage(),
    '/named': (context) => NamedRoute(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

// Buat Class untuk RouteGenerator
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => GeneratorRoute());
  }
}