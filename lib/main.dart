// main.dart
// This is the main page that shows buttons to navigate to different styling demo pages.

import 'package:flutter/material.dart';
import 'text_styling_page.dart';
import 'container_styling_page.dart';
import 'button_styling_page.dart';
import 'layout_styling_page.dart';
import 'theme_styling_page.dart';

void main() {
  runApp(const StylingDemoApp());
}

class StylingDemoApp extends StatelessWidget {
  const StylingDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Styling Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Styling Demo Sections')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildNavButton(context, 'Text Styling', const TextStylingPage()),
          _buildNavButton(
            context,
            'Container Styling',
            const ContainerStylingPage(),
          ),
          _buildNavButton(context, 'Button Styling', const ButtonStylingPage()),
          _buildNavButton(context, 'Layout Styling', const LayoutStylingPage()),
          _buildNavButton(context, 'Theme Styling', const ThemeStylingPage()),
        ],
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(title, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
