import 'package:hackathon/Home/appointment.dart';
import 'package:hackathon/Home/events.dart';
import 'package:hackathon/Home/health.dart';
import 'package:hackathon/Home/medication.dart';
import 'package:hackathon/Home/prescription.dart';
import 'package:hackathon/screens/auth/sign_in_screen.dart';
import 'package:hackathon/screens/contacts/contacts1.dart';
import 'package:hackathon/screens/contacts/emergency.dart';
import 'package:hackathon/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/utils/homeroutes.dart';

import 'Home/homepage.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAMAJA SEVA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: textColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            padding: const EdgeInsets.all(defaultPadding),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: textFieldBorder,
          enabledBorder: textFieldBorder,
          focusedBorder: textFieldBorder,
        ),
      ),
      routes: {
        "/":(context) => const WelcomeScreen(),
        myroutes.homeroute:(context) => homepage(),
        myroutes.loginroute:(context) => SignInScreen(),
        myroutes.signin:((context) => SignInScreen()),
        myroutes.contacts:((context) => const contacts()),
        myroutes.appointment:((context) => const appointment()),
        myroutes.events:((context) => const events()),
        myroutes.health:((context) => const health()),
        myroutes.medication:((context) => const medication()),
        myroutes.prescription:((context) => const prescription()),

        
      },
    );
  }
}