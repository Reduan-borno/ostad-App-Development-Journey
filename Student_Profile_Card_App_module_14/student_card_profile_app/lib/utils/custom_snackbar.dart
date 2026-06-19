import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void showSuccessSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.green.shade600,
    duration: const Duration(seconds: 2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.r),
    ),
    content: Row(
      children: [
        Icon(Icons.check_circle, color: Colors.white, size: 20.sp),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            message,
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
        ),
      ],
    ),
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}
