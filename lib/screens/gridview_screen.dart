import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {"name": "Home", "icon": Icons.home},
      {"name": "Person", "icon": Icons.person},
      {"name": "Work", "icon": Icons.work},
      {"name": "School", "icon": Icons.school},
      {"name": "Settings", "icon": Icons.settings},
      {"name": "Phone", "icon": Icons.phone},
      {"name": "Email", "icon": Icons.email},
      {"name": "Camera", "icon": Icons.camera_alt},
      {"name": "Flutter", "icon": null}, 
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(title: const Text('GridView')),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                items[index]["icon"] != null
                    ? Icon(items[index]["icon"], size: 48, color: Colors.blue)
                    : const FlutterLogo(size: 48),
                const SizedBox(height: 8),
                Text(items[index]["name"]),
              ],
            ),
          );
        },
      ),
    );
  }
}
