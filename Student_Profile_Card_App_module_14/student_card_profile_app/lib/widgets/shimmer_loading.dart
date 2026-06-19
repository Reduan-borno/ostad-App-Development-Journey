import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';


class ShimmerLoadingCard extends StatelessWidget {
  const ShimmerLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      period: const Duration(milliseconds: 1200),
      child: Container(
        width: 300.w,
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          children: [
            CircleAvatar(radius: 45.r, backgroundColor: Colors.grey),
            SizedBox(height: 16.h),
            Container(width: 140.w, height: 16.h, color: Colors.grey),
            SizedBox(height: 8.h),
            Container(width: 110.w, height: 12.h, color: Colors.grey),
            SizedBox(height: 6.h),
            Container(width: 160.w, height: 12.h, color: Colors.grey),
            SizedBox(height: 20.h),
            Container(
              width: double.infinity,
              height: 42.h,
              color: Colors.grey,
            ),
            SizedBox(height: 10.h),
            Container(
              width: double.infinity,
              height: 42.h,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
