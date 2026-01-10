import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/cupertino.dart';

showSnakeBar({required String msg, required AnimatedSnackBarType type, required BuildContext context}) {
  return AnimatedSnackBar.material(
      msg,
      type: type,
      mobileSnackBarPosition: MobileSnackBarPosition.bottom
  ).show(context);
}