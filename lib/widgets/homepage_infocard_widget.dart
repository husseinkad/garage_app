
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utiles/mediaquery.dart';
import '../utiles/text_style.dart';

Widget homePageInfoCard(context){
  return   Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: Container(
        height: CustomMediaQuery.screenHeight(context) * 0.29,
        width: CustomMediaQuery.screenWidth(context) * 0.95,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/cardContainerBackground.png'), fit: BoxFit.fill),
          borderRadius: BorderRadius.only(

            bottomRight: Radius.circular(15),
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),

          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/MasterCardDotsIcon.svg'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child:  Text('مرحبا', style: CustomTextStyle.smallBodyTextStyleSize12pink),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('حيدر سعدون', style: CustomTextStyle.bodyTextStyle,),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('\$5,001.86', style: CustomTextStyle.titleTextStyle,),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('رصيد حسابك', style: CustomTextStyle.smallBodyTextStyle,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('دوج جارجر', style: CustomTextStyle.smallBodyTextStyleSize9),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('انتهاء الصلاحية:20/6', style: CustomTextStyle.smallBodyTextStyleSize9),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('24214أ/بغداد', style: CustomTextStyle.smallBodyTextStyleSize9,),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 54, top: 10, bottom: 0),
                    child: Container(
                      height: CustomMediaQuery.screenHeight(context) * 0.07,
                      width: CustomMediaQuery.screenWidth(context) * 0.125,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                      ),
                      child: Center(child: SvgPicture.asset('assets/icons/ArrowCurvedIcon.svg')),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}