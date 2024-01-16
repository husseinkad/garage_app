

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_app/utiles/border_radius.dart';
import 'package:garage_app/utiles/colors.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:get/get.dart';

import '../utiles/mediaquery.dart';

class PayFeesButton extends StatelessWidget {
  const PayFeesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: CustomMediaQuery.screenWidth(context) * 1,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          onPressed: (){},
          child: Container(
            decoration: const BoxDecoration(
              color: CustomColors.primaryColor,
              borderRadius: CustomBorderRadius.roundedBorder,
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('دفع الغرامة بالدفع الألكتروني', style: CustomTextStyle.smallBodyTextStyleWhite),
                SvgPicture.asset('assets/icons/NormalCardIcon.svg', color: Colors.white,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ReChargeButton extends StatelessWidget {
  const ReChargeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: CustomMediaQuery.screenWidth(context) * 0.91,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(

            onPressed: (){},
            child: Container(
              decoration: const BoxDecoration(
                color: CustomColors.primaryColor,
                borderRadius: CustomBorderRadius.roundedBorder,
              ),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('التعبئة بالدفع الألكتروني', style: CustomTextStyle.smallBodyTextStyleWhite),
                SvgPicture.asset('assets/icons/NormalCardIcon.svg', color: Colors.white,),
              ],
            ),
        ),
        ),
      ),
    );
  }
}
