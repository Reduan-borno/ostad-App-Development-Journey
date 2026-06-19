import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/student.dart';
import '../utils/custom_snackbar.dart';
import 'student_details_dialog.dart';


class ProfileCard extends StatelessWidget {
  final Student student;

  const ProfileCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _AvatarWithBadge(imageUrl: student.imageUrl),
            SizedBox(height: 14.h),
            Text(
              student.name,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.h),
            Text(
              "ID: ${student.id}",
              style: TextStyle(fontSize: 13.sp, color: Colors.grey.shade600),
            ),
            SizedBox(height: 2.h),
            Text(
              student.department,
              style: TextStyle(fontSize: 13.sp, color: Colors.grey.shade600),
            ),
            SizedBox(height: 20.h),

            // "View Details" -> opens the custom dialog
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => showStudentDetailsDialog(context, student),
                icon: Icon(Icons.info_outline, size: 18.sp),
                label: Text("View Details", style: TextStyle(fontSize: 14.sp)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),

            // "Mark Present" -> shows success snackbar
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () => showSuccessSnackBar(
                  context,
                  "${student.name} marked as Present ✅",
                ),
                icon: Icon(Icons.check_circle_outline,
                    size: 18.sp, color: Colors.green),
                label: Text(
                  "Mark Present",
                  style: TextStyle(fontSize: 14.sp, color: Colors.green),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Private widget: just the CircleAvatar + the small red "New" badge
// stacked on top. Separated out so ProfileCard's build() doesn't get
// cluttered with Stack/Positioned details.
class _AvatarWithBadge extends StatelessWidget {
  final String? imageUrl;

  const _AvatarWithBadge({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 45.r,
          backgroundColor: Colors.indigo.shade100,
          backgroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
          child: imageUrl == null
              ? Icon(Icons.person, size: 45.r, color: Colors.indigo)
              : null,
        ),
        Positioned(
          top: -4.h,
          right: -6.w,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              "New",
              style: TextStyle(
                color: Colors.white,
                fontSize: 9.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
