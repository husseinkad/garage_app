import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:get/get.dart';

import '../../utiles/mediaquery.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.1,),

          SvgPicture.asset('assets/congrats.svg', width: 200,),
          SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.03,),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text('Congrats!', style: CustomTextStyle.bigTitleTextStyleRed,),
          ),
          const Text('Account Registered\nSuccessfully', style: CustomTextStyle.smallSubtitleTextStyle, textAlign: TextAlign.center,),
          const Expanded(child: SizedBox()),
          Center(
            child: SizedBox(
              width: CustomMediaQuery.screenWidth(context) * 0.87,
              child: ElevatedButton(
                onPressed: () {
                  Get.offAllNamed('/homePage');
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
                    child: Text('استمرار', style: CustomTextStyle.bodyTextStyleWhite,)
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
