
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utiles/mediaquery.dart';
import '../utiles/text_style.dart';

class HomePageInfoCardWidget extends StatelessWidget {
  const HomePageInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.pink[50],
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),

            ),
          ),
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
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
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
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
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
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
                  const Expanded(child: SizedBox()),
                  InkWell(
                    onTap: (){},
                      child: SvgPicture.asset('assets/icons/ArrowUpWhiteBackIcon.svg')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

