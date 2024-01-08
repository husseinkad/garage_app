import 'package:flutter/material.dart';
import 'package:garage_app/views/auth_screens/congrats_screen.dart';
import 'package:garage_app/views/auth_screens/login_screen.dart';
import 'package:garage_app/views/auth_screens/signup_screen.dart';
import 'package:garage_app/views/splash_screens.dart';
import 'package:get/get.dart';

import 'views/auth_screens/otp_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'garage_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        // splash screens
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/next', page: () => const NextScreen(index: 0,  title: 'شاهد معلومات سيارتك', headline: 'شاهد معلومات السائق والرحلات الماضية', image: 'assets/splash1.svg')),
        GetPage(name: '/second', page: () => const NextScreen(index: 1, title: 'تتبع الغرامات المالية', headline: 'شاهد الغرامات المرورية المتراكمة على المركبة الخاصة بك', image: 'assets/splash2.svg')),
        GetPage(name: '/third', page: () => const NextScreen(index: 2, title: 'تنبيهات انتهاء الصلاحية ', headline: 'تنبيهات بلغرامات وانتهاء صلاحية البطاقة وكشف الحاسبة ...الخ', image: 'assets/Group 4.png')),
        GetPage(name: '/start', page: () => const StartScreen()),

        // auth screens
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/otp', page: () => const OtpScreen(phoneNumber: '+9647803632082',)),
        GetPage(name: '/signUp', page: () => const SignUpScreen()),
        GetPage(name: '/congrats', page: () => const CongratsScreen()),
      ],
      home: const HomePage(),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
