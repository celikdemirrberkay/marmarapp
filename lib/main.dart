import 'package:flutter/material.dart';
import 'package:marmama_app/core/theme/color/app_colors.dart';

Future<void> main() async {
  runApp(const Marmarapp());
}

/// Root of the application
class Marmarapp extends StatelessWidget {
  /// Constructor
  const Marmarapp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marmama',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const Scaffold(),
    );
  }
}
