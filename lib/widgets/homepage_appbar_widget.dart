import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBar = AppBar(
  leading: Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 1
          ),
        ],
      ),
      child: ClipOval(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Image.network('https://i.guim.co.uk/img/media/66767bbb27ae0e99d0dfb2975ff2a2b3db9e1c93/37_6_1612_967/master/1612.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=2a212447d637483b953a4e91b042f0ce', fit: BoxFit.cover,),
        ),
      ),),
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
          onTap: (){},
          child: SvgPicture.asset('assets/icons/NotificationIcon.svg')),
    )
  ],
);