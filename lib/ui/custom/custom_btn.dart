import 'package:flutter/material.dart';

import '../../utils/colorHelper.dart';

class CustomButton extends StatelessWidget {

  final VoidCallback onClick;
  final String title;
  const CustomButton({Key? key, required this.title, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      height: 54,
      color: kPrimaryColor,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.0),
          borderSide: const BorderSide(width: 0.0,
              color: Colors.transparent)
      ),
      child: Text(
        title,
        style: const TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 18),
      ),
      onPressed: onClick,
    );
  }
}
