import 'package:flutter/material.dart';
import 'package:user_auth_by_phone_no/Screens/auth_phone.dart';
import 'package:user_auth_by_phone_no/Screens/profile_screen.dart';
import 'package:user_auth_by_phone_no/Screens/select_language.dart';
import 'package:user_auth_by_phone_no/Screens/home_screen.dart';
import 'package:user_auth_by_phone_no/Screens/verify_otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SelectLanguage.id,
      routes: {
        SelectLanguage.id: (context) => const SelectLanguage(),
        AuthPhone.id: (context) => const AuthPhone(),
        VerifyOTP.id: (context) => const VerifyOTP(),
        HomeScreen.id: (context) => const HomeScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
