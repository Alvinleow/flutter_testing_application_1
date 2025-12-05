// TODO Implement this library.
import 'package:flutter/material.dart';

/// Theme Styling Demo Page
/// Demonstrates how to use app-wide ThemeData and ColorScheme in Flutter.
class ThemeStylingPage extends StatelessWidget {
  const ThemeStylingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Theme Styling Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Using primary color from theme
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Container with Primary Theme Color',
                style: TextStyle(color: theme.colorScheme.onPrimary),
              ),
            ),

            const SizedBox(height: 20),

            /// Using secondary color from theme
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Container with Secondary Theme Color',
                style: TextStyle(color: theme.colorScheme.onSecondary),
              ),
            ),

            const SizedBox(height: 20),

            /// Using textTheme
            Text('Body Medium from Theme', style: theme.textTheme.bodyMedium),

            const SizedBox(height: 20),

            /// Elevated button using theme
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button Using Theme'),
            ),

            const SizedBox(height: 20),

            /// Switch to show active color from theme
            Row(
              children: [
                const Text('Switch Example:'),
                const SizedBox(width: 10),
                Switch(
                  value: true,
                  onChanged: (val) {},
                  activeThumbColor: theme.colorScheme.secondary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
