import 'package:flutter/material.dart';

class ActionButtons extends StatefulWidget {
  const ActionButtons({super.key});

  @override
  State<ActionButtons> createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {
  void _onFollow() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('You are now following Reduanul Islam!')),
    );
  }

  void _onViewProfile() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Profile Details'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: Reduanul Islam'),
            SizedBox(height: 8),
            Text('Profession: Student'),
            SizedBox(height: 8),
            Text('Department: Computer Science & Engineering'),
            SizedBox(height: 8),
            Text('Email: arnobreduan679@gmail.com'),
            SizedBox(height: 8),
            Text('Phone: 01790853814'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: _onFollow,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: const Text('Follow'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: OutlinedButton(
            onPressed: _onViewProfile,
            child: const Text('View Profile'),
          ),
        ),
      ],
    );
  }
}