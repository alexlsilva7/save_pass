import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/material.dart';
import 'package:save_pass/src/view/home/home_page.dart';
import 'package:save_pass/src/view/login/login_page.dart';
import 'package:save_pass/src/view/splash/splash_page.dart';
import 'package:save_pass/ui/colors.dart';

const bool kReleaseMode = bool.fromEnvironment('dart.vm.product');

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: !kReleaseMode,
      tools: const [
        ...DevicePreview.defaultTools,
        DevicePreviewScreenshot(),
      ],
      builder: (context) => MaterialApp(
        title: 'Save Pass',
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.black900,
        ),
        home: const SplashPage(),
        routes: {
          '/login': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
        },
      ),
    );
  }
}
