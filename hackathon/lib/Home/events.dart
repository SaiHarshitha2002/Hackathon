import 'package:flutter/material.dart';

// ignore: camel_case_types
class events extends StatelessWidget {
  const events({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("EVENTS AND AWARENESS"),
      ),
      body: const Center(
        child: Text("ALL THE EVENTS WILL BE SHOWN HERE"),
      ),
    );;
  }
}