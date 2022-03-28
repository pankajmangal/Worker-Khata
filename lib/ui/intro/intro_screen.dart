import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:worker_khata/utils/Gap.dart';
import 'package:worker_khata/utils/colorHelper.dart';

import '../../route/route_constant.dart';
import '../../service/navigation_service.dart';
import '../../utils/imageHelper.dart';

class IntroSliderScreen extends StatefulWidget {
  const IntroSliderScreen({Key? key}) : super(key: key);

  @override
  _IntroSliderScreenState createState() => _IntroSliderScreenState();
}

class _IntroSliderScreenState extends State<IntroSliderScreen> {

  bool isIntroSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: whiteColor,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: isIntroSelected,
                      child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Lottie.asset('assets/lottieAnimFiles/intro_one.json'),
                  )),
                  Visibility(
                      visible: !isIntroSelected,
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Lottie.asset('assets/lottieAnimFiles/intro_two.json'),
                      )),
                  const Text("Lorem ipsum",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        color: blackColor
                    ),),
                  const VerticalGap(gap: 8.0),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
                    child: Text("Lorem ipsum dolor sit amet, "
                        "consetetur sadipscing elitr, sed diam nonumy eirmod",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                          color: blackColor
                      ),),
                  ),
                  const VerticalGap(gap: 60.0),
                  InkWell(
                    child: Container(
                      width: 48,
                      height: 48,
                      child: isIntroSelected ? Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(child: SvgPicture.asset(forwardImg)),
                      ) : const Padding(
                        padding: EdgeInsets.all(12.0),
                      child: Center(
                        child: Text("Go",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                              color: whiteColor
                          ),),
                      )),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor),
                    ),
                    onTap: (){
                      if(isIntroSelected){
                        setState(() {
                          isIntroSelected = !isIntroSelected;
                        });
                      }else{
                        NavigationService().navigationKey.currentState!
                            .pushReplacementNamed(languageLaunch);
                      }
                    }
                  )
                ],
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 0.0),
                  child: Text("Skip",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                        color: kPrimaryLightColor
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
