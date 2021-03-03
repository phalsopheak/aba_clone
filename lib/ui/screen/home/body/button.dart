import 'package:aba_clone/common/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Icon icon;
  final Function onPressed;

  const CustomButton({Key key, this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 5),
      color: AppColor.smallButtonBackground,
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}
