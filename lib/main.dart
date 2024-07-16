import 'package:flutter/material.dart';
import 'package:noteproject/screens/mainPage.dart';
import 'package:noteproject/screens/splash.dart';
import 'package:noteproject/screens/temalar.dart';
import 'package:noteproject/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: Provider.of<ThemeProvider>(context).themeData,
        home: const MainPage());
  }
}
