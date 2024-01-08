import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:garage_app/utiles/mediaquery.dart';
import 'package:garage_app/utiles/text_style.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/loginImage.svg',
                  height: CustomMediaQuery.screenHeight(context) * 0.5
                  ,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'تسجيل الدخول',
                  style: CustomTextStyle.titleTextStyleRed,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'رقم الهاتف',
                    labelStyle: const TextStyle(color: Colors.grey), // Set label color
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(16.0),
                    prefixIcon: const Icon(Icons.phone, color: Colors.grey,), // Set icon color
                    prefixIconConstraints: const BoxConstraints(minWidth: 40),
                    prefixIconColor: Colors.grey, // Set icon color
                  ),
                ),
              ),

              SizedBox(height: CustomMediaQuery.screenHeight(context) * 0.01,),

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
                        child: Text('تسجيل الدخول', style: CustomTextStyle.bodyTextStyleWhite,)
                    ),
                  ),
                ),
              ),

              Center(
                child: SizedBox(
                  width: CustomMediaQuery.screenWidth(context) * 0.87,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/signUp');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: Colors.red),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('انشاء حساب جديد'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
