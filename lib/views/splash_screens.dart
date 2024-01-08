import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:garage_app/utiles/mediaquery.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return const Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: FlutterLogo(
              size: 100.0,
            ),
          ),
        );
      },
    );
  }
}


class NextScreen extends StatelessWidget {
  final int index;
  final String title;
  final String headline;
  final String image;

  const NextScreen({super.key, required this.index, required this.title, required this.headline, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
                child: Image.asset(image, width: double.infinity, height: CustomMediaQuery.screenHeight(context) * 0.5, fit: BoxFit.fill,)),
            Text(title, style: CustomTextStyle.titleTextStyle,),
            Text(headline, textAlign: TextAlign.center,style: CustomTextStyle.subtitleTextStyle, ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(index == 0
                    ? '/second'
                    : (index == 1 ? '/third' : '/start'));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward_ios, color: Colors.white,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/startBackgroundImage.png"), fit: BoxFit.cover)),
        child:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.4),
              SizedBox( width: CustomMediaQuery.screenWidth(context) * 0.7, child: const Text('تابع اخر معلومات \nالبطاقة الخاصة بك واخر عمليات التحويل', style: CustomTextStyle.titleTextStyleWhite, textAlign: TextAlign.start,)),
              SizedBox( width: CustomMediaQuery.screenWidth(context) * 0.7, child: const Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', style: CustomTextStyle.smallTextStyleWhite, textAlign: TextAlign.start,)),
              SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.2),
              Center(
                child: SizedBox(
                  width: CustomMediaQuery.screenWidth(context) * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                       Get.offAllNamed('/login');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0),
                      ),
                    ),
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('ابدأ')
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

