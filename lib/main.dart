import 'package:flutter/material.dart';
import 'package:navbars_practicing/appbars/AnimatedAppBar.dart';

import 'appbars/CenteredNotchAppBar.dart';

const dGrey = Color(0xFF403E43);
const dYellow = Color(0xFFfdfab3);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floatingActionButton: FloatingButtonNotchAppBar(),
      bottomNavigationBar: AnimatedAppBar(),
    );
  }
}

class FloatingButtonNotchAppBar extends StatelessWidget {
  const FloatingButtonNotchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 80,
      child: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: dYellow,
        onPressed: () {},
        child: const Icon(
            Icons.qr_code_scanner_outlined,
            size: 35,
        ),
      ),
    );
  }
}