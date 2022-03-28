import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:worker_khata/utils/Gap.dart';
import 'package:worker_khata/utils/colorHelper.dart';

import '../../route/route_constant.dart';
import '../../service/navigation_service.dart';
import '../../utils/imageHelper.dart';
import '../custom/custom_btn.dart';

class UserSelectionScreen extends StatefulWidget {
  const UserSelectionScreen({Key? key}) : super(key: key);

  @override
  _UserSelectionScreenState createState() => _UserSelectionScreenState();
}

class _UserSelectionScreenState extends State<UserSelectionScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                width: MediaQuery.of(context).size.width/3.4,
                height: MediaQuery.of(context).size.height/5.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SvgPicture.asset(splashLogo),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32.0, 60.0, 32.0, 0.0),
              child: Text("Select Your Profile",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                    color: blackColor
                ),),
            ),
            const VerticalGap(gap: 16.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 4.0, 32.0, 4.0),
              child: InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
                  decoration:  BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(color: kPrimaryColor, width: 1.2)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      selectedIndex == 0 ?
                      Container(
                        width: 32,
                        height: 32,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(child: SvgPicture.asset(tickMarkImg)),
                        ),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor),
                      ) : const SizedBox(
                          width: 32,
                          height: 32),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(ownerImg, width: 28, height: 28),
                          const HorizontalGap(gap: 8),
                          const Text("Owner",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none,
                                  color: blackColor
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 32,
                        height: 32,
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    selectedIndex = selectedIndex == 0 ? 1 : 0;
                  });
                },
              ),
            ),
            const VerticalGap(gap: 16.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 4.0, 32.0, 4.0),
              child: InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
                  decoration:  BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(color: kPrimaryColor, width: 1.2)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      selectedIndex == 0 ?
                      const SizedBox(
                        width: 32,
                        height: 32,)
                          : Container(
                        width: 32,
                        height: 32,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(child: SvgPicture.asset(tickMarkImg)),
                        ),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Image.asset(indiaFlagPngImg, width: 28, height: 28),
                          SvgPicture.asset(workerImg, width: 28, height: 28),
                          const HorizontalGap(gap: 8),
                          const Text("Worker",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none,
                                  color: blackColor
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 32,
                        height: 32,
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    selectedIndex = selectedIndex == 0 ? 1 : 0;
                  });
                },
              ),
            ),
            const VerticalGap(gap: 60.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
              child: CustomButton(
                  title: "Next",
                  onClick: () {
                    NavigationService().navigationKey
                        .currentState?.pushReplacementNamed(loginLaunch);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
