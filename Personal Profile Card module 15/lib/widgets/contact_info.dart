import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Row(
          children: [
            Icon(Icons.email, size: 18, color: Colors.grey),
            SizedBox(width: 8),
            Text('arnobreduan679@gmail.com'),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.phone, size: 18, color: Colors.grey),
            SizedBox(width: 8),
            Text('01790853814'),
          ],
        ),
      ],
    );
  }
}