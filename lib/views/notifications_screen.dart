
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:garage_app/utiles/mediaquery.dart';
import 'package:get/get.dart';

import '../utiles/border_radius.dart';
import '../utiles/colors.dart';
import '../utiles/text_style.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
        title: const Text('الأشعارات', style: CustomTextStyle.mediumTitleTextStyle,),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: CustomMediaQuery.screenWidth(context) * 0.95,
          child: ListView.builder(
            //  reverse: true,
             // physics: const NeverScrollableScrollPhysics(),
              itemCount: 9,
              itemBuilder: (context, index){
                return Container(
                  margin: const EdgeInsets.all(6),
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    borderRadius: CustomBorderRadius.roundedBorder,
                    color: CustomColors.greyBackground,
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: CustomBorderRadius.circleBorder,
                          color: CustomColors.backgroundColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset('assets/icons/cardRemoveIcon.svg'),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('البطاقة على وشك الانتهاء', style: CustomTextStyle.smallBodyTextStyleSize12,),
                            SizedBox(
                              width: CustomMediaQuery.screenWidth(context) * 0.5,
                                child: const Text('قم بتجديد البطاقة قبل النفاذ للأستمرار باستخدام مميزاتها', style: CustomTextStyle.tinySubtitleTextStyle,)),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('2024/4/1', style: CustomTextStyle.smallBodyTextStyleSize12,),
                          ),
                          Text('تاريخ النفاذ', style: CustomTextStyle.tinySubtitleTextStyle,)
                        ],
                      ),
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
