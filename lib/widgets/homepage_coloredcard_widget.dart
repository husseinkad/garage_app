

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utiles/mediaquery.dart';
import '../utiles/text_style.dart';

Widget coloredCard(context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            width: CustomMediaQuery.screenWidth(context) * 0.45,
            height: CustomMediaQuery.screenHeight(context) * 0.18,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/BlueCardBackground.png'), fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('الغرامات المالية', style: CustomTextStyle.bodyTextStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('5325', style: CustomTextStyle.bodyTextStyle,),
                            Text('غرامة مالية', style: CustomTextStyle.smallBodyTextStyleSize9,),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/ArrowCurvedBorderIcon.svg', width: 20),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
              width: CustomMediaQuery.screenWidth(context) * 0.45,
              height: CustomMediaQuery.screenHeight(context) * 0.18,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/GreenCardBackground.png'), fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('عدد الرحلات', style: CustomTextStyle.bodyTextStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('5120', style: CustomTextStyle.bodyTextStyle,),
                            Text('رحلة', style: CustomTextStyle.smallBodyTextStyleSize9,),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/ArrowCurvedBorderIcon.svg', width: 20),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}