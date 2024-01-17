

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:garage_app/utiles/border_radius.dart';
import 'package:garage_app/utiles/colors.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:get/get.dart';

import '../utiles/mediaquery.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: SvgPicture.asset('assets/icons/BackIcon.svg'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: CustomMediaQuery.screenHeight(context) * 0.05,
          ),
          Center(
            child: ClipOval(
              child: Container(
                width: 80,
                height: 80,
                color: Colors.white,
                child: Image.network('https://i.guim.co.uk/img/media/66767bbb27ae0e99d0dfb2975ff2a2b3db9e1c93/37_6_1612_967/master/1612.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=2a212447d637483b953a4e91b042f0ce', fit: BoxFit.cover,),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text('حيدر سعدون', style: CustomTextStyle.bodyTextStyle,),
          ),
          const Text('18 سنة', style: CustomTextStyle.smallBodyTextStyleSize12,),

          Container(
            height: CustomMediaQuery.screenHeight(context) * 0.25,
            width: CustomMediaQuery.screenWidth(context) * 0.94,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              borderRadius: CustomBorderRadius.roundedBorder,
              color: CustomColors.greyBackground
            ),
            child: const Row(
              children: [

              ],
            ),
          ),
        ],
      ),
    );
  }
}
