import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_app/controllers/home_controller.dart';
import 'package:garage_app/views/auth_screens/congrats_screen.dart';
import 'package:garage_app/views/auth_screens/login_screen.dart';
import 'package:garage_app/views/auth_screens/signup_screen.dart';
import 'package:garage_app/views/splash_screens.dart';
import 'package:garage_app/widgets/splash_screen_widgets.dart';
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
      initialRoute: '/next',
      getPages: [

        // onBoarding screens
        GetPage(
            name: '/next',
            page: () => const NextScreen(
                  index: 0,
                  title: 'شاهد معلومات سيارتك',
                  headline: 'شاهد معلومات السائق والرحلات الماضية',
                  image: 'assets/carSplashIcon.png',
                  alignment: Alignment.center,
                )),
        GetPage(
            name: '/second',
            page: () => const NextScreen(
                  index: 1,
                  title: 'تتبع الغرامات المالية',
                  headline:
                      'شاهد الغرامات المرورية المتراكمة على المركبة الخاصة بك',
                  image: 'assets/billSplashIcon.png',
                  alignment: Alignment.topCenter,
                )),
        GetPage(
            name: '/third',
            page: () => const NextScreen(
                  index: 2,
                  title: 'تنبيهات انتهاء الصلاحية ',
                  headline:
                      'تنبيهات بلغرامات وانتهاء صلاحية البطاقة وكشف الحاسبة ...الخ',
                  image: 'assets/bellSplashIcon.png',
                  alignment: Alignment.topCenter,
                )),
        GetPage(name: '/start', page: () => const StartScreen()),

        // auth screens
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(
            name: '/otp',
            page: () => const OtpScreen(
                  phoneNumber: '+9647803632082',
                )),
        GetPage(name: '/signUp', page: () => const SignUpScreen()),
        GetPage(name: '/congrats', page: () => const CongratsScreen()),

        // homePage
        GetPage(name: '/homePage', page: () => Home()),
      ],
      home: Home(),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => _homeController.pages[_homeController.selectedTab.value]),
        bottomNavigationBar: GetBuilder<HomeController>(
          builder: (_) => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _homeController.selectedTab.value,
            onTap: (index) => _homeController.changeTab(index),
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0.0,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/HomePageIcon.svg',
                    color: _homeController.selectedTab.value == 0 ? Colors.red : Colors.grey
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/RoutingIcon.svg',
                    color: _homeController.selectedTab.value == 1 ? Colors.red : Colors.grey
                ),
                label: "Rotation",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/NormalCardIcon.svg',
                    color: _homeController.selectedTab.value == 2 ? Colors.red : Colors.grey
                ),
                label: "Card",
              ),
            ],
          ),
        ));
  }
}
