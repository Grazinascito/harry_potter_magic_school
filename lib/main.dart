import 'package:flutter/material.dart';

import 'global_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: orangeDefault,
          useMaterial3: true,
          textTheme: openSansFont),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: const Color(0xFFA71125),
      toolbarHeight: 20,
      title: const Text("aahahfsdfsdsda"),
    ));
  }
}
