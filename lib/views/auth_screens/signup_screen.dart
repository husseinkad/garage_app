import 'package:flutter/material.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:get/get.dart';

import '../../utiles/mediaquery.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(
                      15.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.arrow_back_ios_new, color: Colors.red, size: 20,),
              )
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.1,),

          Image.asset('assets/qrcode.png', scale: 1.5),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('اذهب الى الهيأة لتفعيل حسابك', style: CustomTextStyle.mediumTitleTextStyle,),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('امسح الكود وقم بتفعيل الحساب الخاص بك ك\nسائق', style: CustomTextStyle.smallSubtitleTextStyle, textAlign: TextAlign.center,),
          ),
          const Expanded(child: SizedBox()),
          Center(
            child: SizedBox(
              width: CustomMediaQuery.screenWidth(context) * 0.87,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/congrats');
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
                    child: Text('امسح الباركود', style: CustomTextStyle.bodyTextStyleWhite,)
                ),
              ),
            ),
          ),

          SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.01,),

        ],
      ),
    );
  }
}
