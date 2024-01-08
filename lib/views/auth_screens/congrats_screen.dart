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

          Image.asset('assets/congrats.png'),
          const Text('Congrats!', style: CustomTextStyle.titleTextStyleRed,),
          const Text('Account Registered\nSuccessfully', style: CustomTextStyle.subtitleTextStyle, textAlign: TextAlign.center,),
          const Expanded(child: SizedBox()),
          Center(
            child: SizedBox(
              width: CustomMediaQuery.screenWidth(context) * 0.87,
              child: ElevatedButton(
                onPressed: () {

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
