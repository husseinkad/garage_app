

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
      body: SingleChildScrollView(
          child: Column(
            children: [
              homePageInfoCard(context),
              coloredCard(context),
            ],
          )
      ),
    );
  }
}
