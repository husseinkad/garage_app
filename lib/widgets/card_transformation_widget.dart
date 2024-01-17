import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_app/utiles/border_radius.dart';
import 'package:garage_app/utiles/colors.dart';
import 'package:garage_app/utiles/text_style.dart';

class CardTransformation extends StatelessWidget {
  const CardTransformation({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
      itemCount: 5,
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
          );
        }
    );
  }
}
