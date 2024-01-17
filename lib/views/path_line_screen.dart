

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PathLineScreen extends StatelessWidget {
  const PathLineScreen({super.key});

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.transparent,
                width: 3,
              ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1
                ),
              ],
            ),
            child: GestureDetector(
              onTap: (){ Get.toNamed('/profilePage'); },
              child: ClipOval(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.white,
                  child: Image.network('https://i.guim.co.uk/img/media/66767bbb27ae0e99d0dfb2975ff2a2b3db9e1c93/37_6_1612_967/master/1612.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=2a212447d637483b953a4e91b042f0ce', fit: BoxFit.cover,),
                ),
              ),
            ),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
                onTap: (){ Get.toNamed('/notificationsPage'); },
                child: SvgPicture.asset('assets/icons/notificationsRedBgIcon.svg')),
          )
        ],
      ),
        body: const GoogleMap(
          initialCameraPosition: _kGooglePlex,
          mapType: MapType.normal,
        )
    );
  }
}
