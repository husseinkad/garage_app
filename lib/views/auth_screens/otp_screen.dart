import 'package:flutter/material.dart';
import 'package:garage_app/utiles/mediaquery.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:get/get.dart';

import '../../controllers/otp_controller.dart';

class OtpScreen extends StatelessWidget {
  final String phoneNumber;

  const OtpScreen({super.key, required this.phoneNumber});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تأكيد الحساب', style: CustomTextStyle.titleTextStyleRed,),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(
                    15.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.arrow_back_ios_new, color: Colors.red, size: 20,),
            )
            ),
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.2,),
            Text(phoneNumber, style: CustomTextStyle.bodyTextStyle, ),
            const Text('ادخل الرقم السري الذي تم ارساله على الرقم الخاص بك', style: CustomTextStyle.smallBodyTextStyle, ),
            SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.1,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                      (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OtpInputBox(index),
                  ),
                ),
              ),
            ),

            SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.06,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('لم يصلك رمز التأكيد؟'),
                TextButton(onPressed: (){}, child: const Text('اعادة الارسال'))
              ],
            ),

            Center(
              child: SizedBox(
                width: CustomMediaQuery.screenWidth(context) * 0.87,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/otp');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0),
                    ),
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('تأكيد', style: CustomTextStyle.bodyTextStyleWhite,)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OtpInputBox extends StatelessWidget {
  final int index;

  OtpInputBox(this.index,);

  @override
  Widget build(BuildContext context) {
    OtpController controller = Get.put(OtpController());

    return SizedBox(
      width: 50,
      height: 50,
      child: TextField(
        controller: controller.controllers[index],
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(
          color: Colors.red,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          counterText: "",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: controller.focusNodes[index].hasFocus ? Colors.red : Colors.grey[200]!,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty) {
            _moveToNextField(controller, index);
          }
        },
        focusNode: controller.focusNodes[index],
        onEditingComplete: () {
          _moveToNextField(controller, index);
        },
      ),
    );
  }

  void _moveToNextField(OtpController controller, int currentIndex) {
    if (currentIndex < controller.controllers.length + 1) {
      FocusScope.of(Get.context!).requestFocus(controller.focusNodes[currentIndex - 1]);
    }
  }
}

