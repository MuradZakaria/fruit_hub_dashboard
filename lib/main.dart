import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/helpers_fuction/on_generate_route.dart';
import 'package:fruit_hub_dashboard/features/dashboard/views/dashboard_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: DashboardView.routeName,
    );
  }
}
