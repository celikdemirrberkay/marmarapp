import 'package:flutter/material.dart';
import 'package:marmarapp/core/theme/color/app_colors.dart';
import 'package:marmarapp/feature/home/view/home_view.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Marmarapp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
