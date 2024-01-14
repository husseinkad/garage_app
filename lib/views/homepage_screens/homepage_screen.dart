

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_app/utiles/mediaquery.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:garage_app/widgets/homepage_coloredcard_widget.dart';

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
              Center(
                child: Container(
                  width: CustomMediaQuery.screenWidth(context) * 0.93,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: const EdgeInsets.all(8),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: CustomTextStyle.smallBodyTextStyle,
                    tabs: const [
                      Tab(text: 'اخر الرحلات',),
                      Tab(text: 'التحويلات المالية',),
                    ],
                  )
                ),
              ),
          
              const SizedBox(
                height: 300,
                child: TabBarView(children: [
                  Center(child: Text('hiiiiiiiiii')),
                  Center(child: Text('moooooooooooo')),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
