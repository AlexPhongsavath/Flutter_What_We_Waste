import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const WhatWeWasteApp());
}

class WhatWeWasteApp extends StatelessWidget {
  const WhatWeWasteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What We Waste',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}
