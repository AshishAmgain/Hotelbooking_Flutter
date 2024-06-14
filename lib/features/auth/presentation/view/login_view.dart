import 'package:flutter/material.dart';
import 'package:hotel_booking/screen/dashboard_screen.dart';
import 'package:hotel_booking/screen/register_screen.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Hide the app bar
      