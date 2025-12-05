// TODO Implement this library.
import 'package:flutter/material.dart';

/// Layout Styling Demo Page
/// Shows basic and commonly used layout widgets in Flutter.
class LayoutStylingPage extends StatelessWidget {
  const LayoutStylingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Styling Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Row layout
              const Text(
                'Row Example',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 60, height: 60, color: Colors.blue),
                  Container(width: 60, height: 60, color: Colors.green),
                  Container(width: 60, height: 60, color: Colors.red),
                ],
              ),

              const SizedBox(height: 30),

              /// Column layout
              const Text(
                'Column Example',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 80, height: 40, color: Colors.orange),
                  const SizedBox(height: 10),
                  Container(width: 80, height: 40, color: Colors.purple),
                ],
              ),

              const SizedBox(height: 30),

              /// Padding
              const Text(
                'Padding Example',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.grey.shade300,
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('This text has padding of 16px'),
                ),
              ),

              const SizedBox(height: 30),

              /// Margin using Container
              const Text(
                'Margin Example',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                padding: const EdgeInsets.all(12),
                color: Colors.lightBlue.shade100,
                child: const Text('Container with margin'),
              ),

              const SizedBox(height: 30),

              /// SizedBox
              const Text(
                'SizedBox Example',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Container(color: Colors.teal),
              ),

              const SizedBox(height: 30),

              /// Align widget
              const Text(
                'Align Example',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 100,
                color: Colors.grey.shade200,
                child: const Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Bottom Right'),
                ),
              ),

              const SizedBox(height: 30),

              /// Center widget
              const Text(
                'Center Example',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 100,
                color: Colors.grey.shade300,
                child: const Center(child: Text('Centered Text')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
