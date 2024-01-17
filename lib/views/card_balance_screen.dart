import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:garage_app/utiles/border_radius.dart';
import 'package:garage_app/utiles/colors.dart';
import 'package:garage_app/utiles/mediaquery.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:garage_app/widgets/payment_buttons_widget.dart';

import '../widgets/homepage_appbar_widget.dart';

class CardBalanceScreen extends StatelessWidget {
  const CardBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: const ReChargeButton(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: CustomMediaQuery.screenHeight(context) * 0.05,
            ),
            const Center(
                child: Text(
              '\$5,001.86',
              style: CustomTextStyle.bigTitleTextStyleRed,
            )),
            const Center(
              child: Text(
                'رصيد حسابك',
                style: CustomTextStyle.smallBodyTextStyle,
              ),
            ),
            SizedBox(
              height: CustomMediaQuery.screenHeight(context) * 0.05,
            ),

            Container(
              decoration: const BoxDecoration(
                color: CustomColors.blackBackground,
                borderRadius: CustomBorderRadius.roundedBorder,
              ),
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('الديون المالية', style: CustomTextStyle.smallBodyTextStyleSize9White,),
                      Text('\$5,001.86', style: CustomTextStyle.titleTextStyleWhite,),
                    ],
                  ),

              Container(
                decoration: const BoxDecoration(
                  color: CustomColors.backgroundColor,
                  borderRadius: CustomBorderRadius.roundedBorder,
                ),
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                child: const Text('دفع الديون', style: CustomTextStyle.smallBodyTextStyleSize9,),
              ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('التحويلات المالية', style: CustomTextStyle.smallTitleTextStyle,),
            ),

            const Center(
              child: CardTransformations(),
            ),
          ],
        ),
      ),
    );
  }
}


class CardTransformations extends StatelessWidget {
  const CardTransformations({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        reverse: true,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context, index){
          return Container(
            margin: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              borderRadius: CustomBorderRadius.roundedBorder,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: CustomBorderRadius.circleBorder,
                        color: CustomColors.backgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset('assets/icons/CardChargeIcon.svg'),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('تم شحن البطاقة', style: CustomTextStyle.smallBodyTextStyle,),
                          Text('2023/2/24', style: CustomTextStyle.tinySubtitleTextStyle,),
                        ],
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('\$25.00', style: CustomTextStyle.smallBodyTextStyle,),
                    ),
                  ],
                ),
                const Divider(thickness: 0.2,),
              ],
            ),
          );
        }
    );
  }
}
