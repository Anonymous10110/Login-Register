import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart'; // Import for time formatting
import 'package:intl/intl.dart'; // Import to handle time zones

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  late String _currentTime;

  @override
  void initState() {
    super.initState();
    // Initialize the time and update it every second
    _currentTime = _formatTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = _formatTime(DateTime.now());
      });
    });
  }

  // Format the time as HH:mm:ss AM/PM (Philippines Time - Asia/Manila)
  String _formatTime(DateTime time) {
    // Set the correct time zone for Philippines (Asia/Manila)
    final DateFormat formatter = DateFormat('hh:mm:ss a'); // Format with AM/PM
    return formatter.format(time); // Format the current time
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(59.0),
          child: Column(
            children: [
              // Image at the top
              Center(
                child: Image.asset(
                  'assets/dict.png', // Replace with your image asset
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 10),

              // "Mark Attendance" text
              const Text(
                "Attendance",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Live time display with AM/PM format
              Text(
                _currentTime, // Display current time
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),

              // "In" and "Out" buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle "In" button click
                      print("Marked In");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // In button color
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('In', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle "Out" button click
                      print("Marked Out");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Out button color
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Out', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
