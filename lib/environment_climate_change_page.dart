import 'package:flutter/material.dart';

class EnvironmentClimateChangePage extends StatelessWidget {
  const EnvironmentClimateChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Environment & Climate Change'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Data about Environment & Climate Change',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: const Column(
                  children: [
                    EnvironmentOption(
                      icon: Icons.article,
                      label: 'Article',
                    ),
                    EnvironmentOption(
                      icon: Icons.build,
                      label: 'Preparation for Disaster',
                    ),
                    EnvironmentOption(
                      icon: Icons.settings,
                      label: 'Disaster Management',
                    ),
                    EnvironmentOption(
                      icon: Icons.warning,
                      label: 'Expected Disaster',
                    ),
                    EnvironmentOption(
                      icon: Icons.info,
                      label: 'Information Providers',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EnvironmentOption extends StatelessWidget {
  final IconData icon;
  final String label;

  const EnvironmentOption({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
