// TODO Implement this library.
import 'package:flutter/material.dart';

/// Container Styling Demo Page
/// Shows common container stylings used in typical Flutter apps.
class ContainerStylingPage extends StatelessWidget {
  const ContainerStylingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container Styling Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Basic container with background color
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blue.shade100,
              child: const Text('Basic Container with background color'),
            ),

            const SizedBox(height: 20),

            /// Rounded corners
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text('Container with rounded corners'),
            ),

            const SizedBox(height: 20),

            /// Border
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text('Container with border'),
            ),

            const SizedBox(height: 20),

            /// Shadow example
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(2, 4),
                    color: Colors.black.withValues(alpha: 0.1),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text('Container with shadow'),
            ),

            const SizedBox(height: 20),

            /// Gradient background
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Container with gradient background',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
