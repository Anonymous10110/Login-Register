import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Image at the top of the screen
            Center(
              child: Image.asset(
                'assets/dict.png',  // Your image path here
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(height: 20),  // Space between the image and the grid
            // Grid of cards
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1, // Aspect ratio for each card
                ),
                itemCount: 4, // Total number of items
                itemBuilder: (context, index) {
                  return DashboardCard(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final int index;

  const DashboardCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = ['Profile', 'About', 'Date', 'Messages'];  // Changed 'Report' to 'Date'
    final List<IconData> icons = [
      Icons.person,           // Profile icon
      Icons.info,             // About icon (previously settings)
      Icons.date_range,       // Date icon (replacing the previous 'Report' icon)
      Icons.message,          // Messages icon
    ];

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          // You can handle the tap here (e.g., navigate to another screen)
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Tapped on ${titles[index]}')),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icons[index],
              size: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            Text(
              titles[index],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
