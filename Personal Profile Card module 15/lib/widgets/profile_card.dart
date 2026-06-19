import 'package:flutter/material.dart';
import 'contact_info.dart';
import 'action_buttons.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/mypicture.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'Reduanul Islam',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text('Student', style: TextStyle(fontSize: 15, color: Colors.grey)),
            SizedBox(height: 12),
            Text(
              'CSE student, Computer Science and Engineering.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            Divider(height: 32),
            ContactInfo(),
            SizedBox(height: 20),
            ActionButtons(),
          ],
        ),
      ),
    );
  }
}
