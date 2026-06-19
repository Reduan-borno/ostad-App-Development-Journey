import 'package:flutter/material.dart';
import '../models/student.dart';
import '../widgets/profile_card.dart';
import '../widgets/shimmer_loading.dart';

class StudentProfileScreen extends StatefulWidget {
  const StudentProfileScreen({super.key});

  @override
  State<StudentProfileScreen> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
  bool _isLoading = true;

  final Student _student = const Student(
    name: "reduanul islam",
    id: "22-49323-3",
    department: "Computer Science & Engineering (aiub)",
  );

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  Future<void> _startLoading() async {
    await Future.delayed(const Duration(seconds: 2, milliseconds: 500));
    if (mounted) {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Profile"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFFF4F4FB),
      body: Center(
        child: _isLoading
            ? const ShimmerLoadingCard()
            : ProfileCard(student: _student),
      ),
    );
  }
}
