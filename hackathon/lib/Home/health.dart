import 'package:flutter/material.dart';

// ignore: camel_case_types
class health extends StatelessWidget {
  const health({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("HEALTH TIPS"),
      ),
      body: const Center(
        child: Text("ALL THE HEALTH TIPS WILL BE SHOWN HERE"),
      ),
    );
  }
}