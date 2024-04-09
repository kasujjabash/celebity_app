import 'package:cafe/model/celebrities_modules.dart';
import 'package:cafe/pages/home_page.dart';
import 'package:cafe/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      //theme provider
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      //restaurate provider
      ChangeNotifierProvider(create: (context) => Celebrities())
    ],
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
        title: 'Celebrity online',
        theme: Provider.of<ThemeProvider>(context).themeData,
        home: const HomePage());
  }
}
