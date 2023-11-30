import 'package:flutter/material.dart';

class HomePageEasy extends StatefulWidget {
  const HomePageEasy({super.key});

  @override
  State<HomePageEasy> createState() => _HomePageEasyState();
}

// FORMA FACIL Y RAPIDA ==================================================
// =======================================================================
class _HomePageEasyState extends State<HomePageEasy> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: currentWidth < 600 ? Colors.red : Colors.blue,
      body: Center(
        child: Text(currentWidth.toString()),
      ),
    );
  }
}
