import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/student.dart';

void showStudentDetailsDialog(BuildContext context, Student student) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.school, color: Colors.indigo, size: 22.sp),
                  SizedBox(width: 8.w),
                  Text(
                    "Student Details",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              _DetailRow(
                  icon: Icons.person, label: "Name", value: student.name),
              SizedBox(height: 10.h),
              _DetailRow(icon: Icons.badge, label: "ID", value: student.id),
              SizedBox(height: 10.h),
              _DetailRow(
                icon: Icons.account_balance,
                label: "Dept",
                value: student.department,
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Close", style: TextStyle(fontSize: 14.sp)),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18.sp, color: Colors.indigo),
        SizedBox(width: 8.w),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$label: ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: value,
                  style: TextStyle(fontSize: 14.sp),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
