import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_app/utiles/colors.dart';
import 'package:garage_app/widgets/last_trips_widget.dart';
import 'package:get/get.dart';

import '../../utiles/border_radius.dart';
import '../../utiles/mediaquery.dart';
import '../../utiles/text_style.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

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
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    width: CustomMediaQuery.screenWidth(context) * 0.45,
                    decoration: const BoxDecoration(
                        color: CustomColors.pinkBackground,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'عدد الرحلات الكلية',
                            style: CustomTextStyle
                                .smallBodyTextStyleColorForPinkBg,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '239',
                            style: CustomTextStyle.titleTextStyleColorForPinkBg,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text('زيادة', style: CustomTextStyle.smallBodyTextStyleColorForBlueBg),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                child: SvgPicture.asset('assets/icons/ArrowRiseIcon.svg'),
                              ),
                              const Text('+6.08%', style: CustomTextStyle.smallBodyTextStyleColorForBlueBg),
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
                    decoration: const BoxDecoration(
                        color: CustomColors.blueBackground,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'عدد الرحلات الاسبوعية',
                            style: CustomTextStyle
                                .smallBodyTextStyleColorForBlueBg,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '239',
                            style: CustomTextStyle.titleTextStyleColorForBlueBg,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text('زيادة', style: CustomTextStyle.smallBodyTextStyleColorForBlueBg),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                child: SvgPicture.asset('assets/icons/ArrowRiseIcon.svg'),
                              ),
                              const Text('+6.08%', style: CustomTextStyle.smallBodyTextStyleColorForBlueBg),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              width: CustomMediaQuery.screenWidth(context) * 0.95,
              height: 400,
              child: const LastTrips()),
        ],
      ),
    );
  }
}
