// TODO Implement this library.
import 'package:flutter/material.dart';

/// Text Styling Demo Page
/// This page shows common text styles used in everyday Flutter apps.
class TextStylingPage extends StatelessWidget {
  const TextStylingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Styling Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Basic text styling
            const Text('Basic Text — default style'),

            const SizedBox(height: 20),

            /// Font size
            const Text('Large Font Size (24)', style: TextStyle(fontSize: 24)),

            const SizedBox(height: 20),

            /// Font weight
            const Text(
              'Bold Text',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            /// Text color
            Text(
              'Colored Text (Blue)',
              style: TextStyle(color: Colors.blue.shade600),
            ),

            const SizedBox(height: 20),

            /// Letter spacing
            const Text(
              'Letter Spacing Example',
              style: TextStyle(letterSpacing: 2),
            ),

            const SizedBox(height: 20),

            /// Text alignment inside container
            Container(
              width: double.infinity,
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(12),
              child: const Text(
                'Centered Text inside Container',
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),

            /// Custom font style (italic)
            const Text(
              'Italic Text Example',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
