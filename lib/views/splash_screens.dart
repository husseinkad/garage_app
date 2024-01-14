import 'package:flutter/material.dart';
import 'package:garage_app/utiles/mediaquery.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  final int index;
  final String title;
  final String headline;
  final String image;
  final Alignment alignment;

  const NextScreen({
    Key? key,
    required this.index,
    required this.title,
    required this.headline,
    required this.image,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: alignment,
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.04),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: CustomTextStyle.titleTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    headline,
                    style: CustomTextStyle.subtitleTextStyle,
                  ),
                ),
                SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.04),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(index == 0 ? '/second' : (index == 1 ? '/third' : '/start'));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 16),
                      child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.04),
              ],
            ),
          ),

        ],
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

