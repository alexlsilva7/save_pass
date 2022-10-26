import 'package:flutter/material.dart';
import 'package:save_pass/src/view/login/login_page.dart';
import 'package:save_pass/src/view/splash/splash_page.dart';
import 'package:save_pass/ui/colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save Pass',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.black900,
      ),
      home: const SplashPage(),
      routes: {
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
