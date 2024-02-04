import 'package:flutter/material.dart';

class TravellerScreen extends StatefulWidget {
  const TravellerScreen({super.key});

  @override
  State<TravellerScreen> createState() => _TravellerScreenState();
}

class _TravellerScreenState extends State<TravellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: const Text(
          'History',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Text('সাগরকন্যা কুতুবদিয়া তে আপনাকে স্বাগতম'),
              Text(''),
              Text(''),
            ],
          ),
          Column(),
        ],
      ),
    );
  }
}
