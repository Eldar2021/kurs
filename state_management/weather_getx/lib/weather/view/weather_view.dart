import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:weather_getx/components/custom_icon_button.dart';
import 'package:weather_getx/constants/api_const.dart';
import 'package:weather_getx/constants/app_text.dart';
import 'package:weather_getx/constants/app_text_style.dart';
import 'package:weather_getx/weather/controller/weather_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final WeatherCtl ctl = Get.put(WeatherCtl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        title: const Text(AppText.appBarTitle, style: AppTextStyle.appBar),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/weather.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  icon: Icons.near_me,
                  onPressed: () async {
                    await ctl.weatherLocation();
                  },
                ),
                CustomIconButton(
                  icon: Icons.location_city,
                  onPressed: () {
                    ctl.showBottom(context);
                  },
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 20),
                Obx(() {
                  return Text(
                    '${ctl.weather.value != null ? (ctl.weather.value!.temp - 274.15).floorToDouble() : '...'}',
                    style: AppTextStyle.body1,
                  );
                }),
                Obx(() {
                  return ctl.weather.value != null
                      ? Image.network(
                          ApiConst.getIcon(ctl.weather.value!.icon, 4),
                          height: 160,
                          fit: BoxFit.fitHeight,
                        )
                      : const CircularProgressIndicator();
                }),
              ],
            ),
          ],
        ),
      ),
      // body: ctl.weather == null
      //     ? const Center(child: CircularProgressIndicator())
      //     : Container(
      //         width: double.infinity,
      //         decoration: const BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage('assets/weather.jpg'),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         child: Column(
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 CustomIconButton(
      //                   icon: Icons.near_me,
      //                   onPressed: () async {
      //                     await ctl.weatherLocation();
      //                   },
      //                 ),
      //                 CustomIconButton(
      //                   icon: Icons.location_city,
      //                   onPressed: () {
      //                     ctl.showBottom(context);
      //                   },
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               children: [
      //                 const SizedBox(width: 20),
      //                 Text('${(ctl.weather!.value.temp - 274.15).floorToDouble()}', style: AppTextStyle.body1),
      //                 Image.network(
      //                   ApiConst.getIcon(ctl.weather!.value.icon, 4),
      //                   height: 160,
      //                   fit: BoxFit.fitHeight,
      //                 ),
      //               ],
      //             ),
      //             Expanded(
      //               flex: 5,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   FittedBox(
      //                     child: Text(
      //                       // "You'll need and".replaceAll(' ', '\n'),
      //                       ctl.weather!.value.description.replaceAll(' ', '\n'),
      //                       textAlign: TextAlign.right,
      //                       style: AppTextStyle.body2((90)),
      //                     ),
      //                   ),
      //                   const SizedBox(width: 20),
      //                 ],
      //               ),
      //             ),
      //             Expanded(
      //               flex: 1,
      //               child: FittedBox(
      //                 child: Text(
      //                   ctl.weather!.value.city,
      //                   textAlign: TextAlign.right,
      //                   style: AppTextStyle.body1,
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
    );
  }
}
