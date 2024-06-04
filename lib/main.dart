import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 33, 21, 71),
          Color.fromARGB(255, 188, 14, 165),
        ),
      ),
    ),
  );
}
