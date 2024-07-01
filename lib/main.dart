import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(WhatWeWasteApp());
}

class WhatWeWasteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What We Waste',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}
