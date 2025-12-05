// TODO Implement this library.
import 'package:flutter/material.dart';

/// Button Styling Demo Page
/// Shows the most commonly used and visually recognizable button styles.
class ButtonStylingPage extends StatelessWidget {
  const ButtonStylingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Styling Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ElevatedButton - Default raised button
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),

            const SizedBox(height: 20),

            /// ElevatedButton with custom style
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Custom Elevated Button',
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),

            /// OutlinedButton - button with border
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),

            const SizedBox(height: 20),

            /// OutlinedButton with custom border
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue, width: 2),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
              ),
              child: const Text('Custom Outlined Button'),
            ),

            const SizedBox(height: 20),

            /// TextButton - simple text-style button
            TextButton(onPressed: () {}, child: const Text('Text Button')),

            const SizedBox(height: 20),

            /// TextButton with style
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
              ),
              child: const Text('Styled Text Button Testing 123 12897213786'),
            ),

            const SizedBox(height: 20),

            /// Icon Button
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              color: Colors.pink,
            ),

            const SizedBox(height: 20),

            /// Button with both icon + text
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
