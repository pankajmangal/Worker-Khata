import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:worker_khata/route/route_constant.dart';
import 'package:worker_khata/utils/Gap.dart';

import '../../service/navigation_service.dart';
import '../../utils/colorHelper.dart';
import '../../utils/imageHelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () =>
        NavigationService().navigationKey.currentState!
        .pushReplacementNamed(introLaunch));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            elevation: 8.0,
            color: whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width/2.4,
              height: MediaQuery.of(context).size.height/3.6,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: SvgPicture.asset(splashLogo),
              ),
            ),
          ),
          const VerticalGap(gap: 20.0),
          const Text("Worker Khata Book",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            color: blackColor
          ),)
        ],
      ),
    );
  }
}
