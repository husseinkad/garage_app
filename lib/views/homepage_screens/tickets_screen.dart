import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_app/utiles/colors.dart';
import 'package:get/get.dart';

import '../../utiles/border_radius.dart';
import '../../utiles/mediaquery.dart';
import '../../utiles/text_style.dart';
import '../../widgets/payment_buttons_widget.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

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
      floatingActionButton: const PayFeesButton(),
      body: SingleChildScrollView(
        child: Column(
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
                              'عدد الغرامات المرورية',
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
                                const Expanded(child: SizedBox()),
                                SvgPicture.asset('assets/icons/trafficLightIcon.svg',
                                    width: 40)
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
                              'المبلغ المتراكم',
                              style: CustomTextStyle
                                  .smallBodyTextStyleColorForBlueBg,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '25.000',
                              style: CustomTextStyle.titleTextStyleColorForBlueBg,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Expanded(child: SizedBox()),
                                SvgPicture.asset('assets/icons/moneyBoxIcon.svg',
                                    width: 40)
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
              width: CustomMediaQuery.screenWidth(context) * 0.96,
                child: const TicketFeesWidget()),
          ],
        ),
      ),
    );
  }
}


class TicketFeesWidget extends StatelessWidget {
  const TicketFeesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       // reverse: true,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset('assets/icons/trafficLightIcon.svg'),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('غرامة مالية', style: CustomTextStyle.smallBodyTextStyle,),
                      SizedBox(
                        width: CustomMediaQuery.screenWidth(context) * 0.45,
                          child: const Text('تم تغريمك بمقدار 25الف بسبب تجاوز اشارة المرور', style: CustomTextStyle.tinySubtitleTextStyle, )),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('IQD25000', style: CustomTextStyle.smallBodyTextStyle,),
                ),
              ],
            ),
          );
        }
    );
  }
}
