import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:worker_khata/utils/Gap.dart';

import '../../utils/colorHelper.dart';
import '../../utils/imageHelper.dart';
import '../custom/custom_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text("Verification",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        color: blackColor
                    )),
                const VerticalGap(gap: 8.0),
                const Padding(
                  padding: EdgeInsets.fromLTRB(52.0, 0.0, 52.0, 0.0),
                  child: Text("We will send a One Time Password on your phone number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: blackColor
                      )),
                ),
                const VerticalGap(gap: 32.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 6.0, 4.0, 6.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid,
                      width: 1.0, color: blackColor)
                    ),
                    child: Row(
                      children: [
                        Image.asset(indiaFlagPngImg, width: 28, height: 28),
                        const HorizontalGap(gap: 8),
                        const Text("+91",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none,
                                color: blackColor
                            )),
                        const HorizontalGap(gap: 4),
                        Container(
                          height: 34.0,
                          width: 1.0,
                          color: Colors.black38,
                          margin: const EdgeInsets.only(left: 10.0, right: 10.0)
                        ),
                        const HorizontalGap(gap: 6),
                       /* TextFormField(

                        )*/
                      ],
                    ),
                  ),
                ),
                const VerticalGap(gap: 40.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
                  child: CustomButton(
                      title: "Get OTP",
                      onClick: () {
                        /*NavigationService().navigationKey
                            .currentState?.pushReplacementNamed(loginLaunch);*/
                      }),
                )
              ]
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 0.0),
            child: SvgPicture.asset(closeImg, width: 18, height: 18),
          ),
        ],
      ),
    );
  }
}
