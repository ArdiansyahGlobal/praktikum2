import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/plan_provider.dart'; // ✅ Impor PlanNotifier dari sini
import 'views/plan_screen.dart'; // ✅ Impor PlanScreen dari views

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PlanNotifier(), // ✅ Hanya satu sumber
      child: const MasterPlanApp(),
    ),
  );
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const PlanScreen(),
    );
  }
}
