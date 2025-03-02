import 'package:flutter/material.dart';
import 'attendance_page.dart'; // Import the AttendancePage
import 'dashboard_page.dart'; // Import the DashboardPage

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Home Page'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              const SizedBox(height: 5),

              // Full name text (you can dynamically replace this)
              const Text(
                "Rendon T. Torente",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Buttons below the name (with updated names and style)
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the DashboardScreen when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DashboardScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Blue background
                      minimumSize: const Size(200.0, 50), // Fixed width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Dashboard', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the AttendancePage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AttendancePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Blue background
                      minimumSize: const Size(200.0, 50), // Fixed width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Attendance', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the Information button (if needed)
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Blue background
                      minimumSize: const Size(200.0, 50), // Fixed width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Task/Activity', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the Report button (if needed)
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Blue background
                      minimumSize: const Size(200.0, 50), // Fixed width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Report', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Logout button (if needed)
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Blue background
                      minimumSize: const Size(200.0, 50), // Fixed width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Logout', style: TextStyle(fontSize: 18, color: Colors.white)),
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
