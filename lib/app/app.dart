import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/app/navigator_key/navigator_key.dart';
import 'package:hotel_booking/screen/splash_screen.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      navigatorKey: AppNavigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      // theme: AppTheme.getApplicationTheme(false),
      home: const SplashScreen(),
    );
  }
}
