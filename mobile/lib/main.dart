import 'package:flutter/material.dart';
import 'package:mobile/routes.dart';
import 'screens/HomeScreen/HomeScreen.dart';
import 'utilities/ColorCollection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FUND',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: const MaterialColor(
                  ColorCollection.mainColorINT, ColorCollection.mainColor))),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(body: HomeScreen());
  }
}
