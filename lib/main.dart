import 'package:flutter/material.dart';
import 'package:netflixclone/screens/home_screen.dart';

void main() {
  runApp(const NetFlixClone());
}

class NetFlixClone extends StatelessWidget {
  const NetFlixClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      home: const HomeScreen(),
    );
  }
}
