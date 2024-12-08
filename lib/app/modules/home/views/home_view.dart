import 'package:delnita_motivator/app/data/shared/color_palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';

part 'desktop_view.dart';
part 'mobile_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: ColorPalette.backgroundGradient,
          ),
        ),
        child: Get.width < 600 ? _MobileView() : _DesktopView(),
      ),
    );
  }
}
