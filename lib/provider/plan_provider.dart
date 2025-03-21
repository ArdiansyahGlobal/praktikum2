import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanNotifier extends ChangeNotifier {
  Plan _plan = const Plan(); // ✅ Gunakan variabel private untuk menyimpan data

  Plan get plan => _plan; // ✅ Getter untuk mendapatkan plan saat ini

  void updatePlan(Plan newPlan) {
    _plan = newPlan;
    notifyListeners(); // ✅ Memberi tahu listener bahwa ada perubahan data
  }
}

class PlanProvider extends InheritedNotifier<PlanNotifier> {
  const PlanProvider({super.key, required Widget child, required PlanNotifier notifier})
      : super(child: child, notifier: notifier);

  static PlanNotifier of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PlanProvider>()!.notifier!;
  }
}
