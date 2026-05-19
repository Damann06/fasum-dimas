import 'dart:convert';

import 'package:flutter/material.dart';

class FullImageScreen extends StatelessWidget {
  const FullImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap:() {
          Navigator.pop(context);
        },child: Center(
          child: InteractiveViewer(
            child: Image.memory(
              base64Decode(imageBase64),
              fit: BoxFit.contain,            
              ),
            ),
        ),
      ),
    );
  }
}