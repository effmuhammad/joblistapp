import 'package:flutter/material.dart';
import 'package:joblistapp/screens/apply_screen/apply_screen.dart';
import 'package:joblistapp/screens/home_screen/home_screen.dart';
import 'package:joblistapp/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joblist App by Effry Muhammad',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/apply': (context) => const ApplyScreen(),
      },
    );
  }
}
