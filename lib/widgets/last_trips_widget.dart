import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_app/utiles/border_radius.dart';
import 'package:garage_app/utiles/colors.dart';
import 'package:garage_app/utiles/mediaquery.dart';
import 'package:garage_app/utiles/text_style.dart';

class LastTrips extends StatelessWidget {
  const LastTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        reverse: true,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 8,
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
                    child: SvgPicture.asset('assets/icons/RoutingIcon.svg', color: CustomColors.primaryColor,),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('من', style: CustomTextStyle.tinySubtitleTextStyle,),
                      Text('بغداد', style: CustomTextStyle.smallBodyTextStyle,),
                    ],
                  ),
                ),

                SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.05, child: const VerticalDivider(color: CustomColors.greyTextColor)),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('الى', style: CustomTextStyle.tinySubtitleTextStyle,),
                      Text('البصرة', style: CustomTextStyle.smallBodyTextStyle,),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('الجباية', style: CustomTextStyle.tinySubtitleTextStyle,),
                      Text('\$25.00', style: CustomTextStyle.smallBodyTextStyle,),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}
