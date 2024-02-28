import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandAndDismiss extends StatelessWidget {
  const ExpandAndDismiss({super.key, required this.icon, this.onTap});
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 35.h,
      width: 30.w,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Center(
        child: Icon(icon),
      ),
    );
  }
}
