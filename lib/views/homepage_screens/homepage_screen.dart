

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_app/utiles/border_radius.dart';
import 'package:garage_app/utiles/colors.dart';
import 'package:garage_app/utiles/mediaquery.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:garage_app/widgets/homepage_coloredcard_widget.dart';
import 'package:garage_app/widgets/last_trips_widget.dart';

import '../../widgets/card_transformation_widget.dart';
import '../../widgets/homepage_appbar_widget.dart';
import '../../widgets/homepage_infocard_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: appBar,
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HomePageInfoCardWidget(),
              const ColoredCardWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: CustomMediaQuery.screenWidth(context) * 0.93,
                    decoration: const BoxDecoration(
                      color: CustomColors.greyBackground,
                      borderRadius: CustomBorderRadius.circleBorder
                    ),
                    child: const TabBar(
                      indicator: BoxDecoration(
                        color: CustomColors.backgroundColor,
                        borderRadius: CustomBorderRadius.roundedBorder,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding: EdgeInsets.all(8),
                      labelColor: CustomColors.textColor,
                      unselectedLabelColor: CustomColors.greyTextColor,
                      labelStyle: CustomTextStyle.smallBodyTextStyle,
                      dividerColor: Colors.transparent,
                      tabs: [
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Tab(text: 'اخر الرحلات',),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Tab(text: 'التحويلات المالية',),
                        ),
                      ],
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 400,
                  width: CustomMediaQuery.screenWidth(context) * 0.95,
                  child: const TabBarView(children: [
                    LastTrips(),
                    CardTransformation(),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
