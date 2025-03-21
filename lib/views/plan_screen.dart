import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/data_layer.dart';
import '../provider/plan_provider.dart'; // ✅ Hanya gunakan jika perlu

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  Plan plan = const Plan();
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Master Plan')),
      body: Consumer<PlanNotifier>(
        builder: (context, planNotifier, child) {
          return Column(
            children: [
              Expanded(child: _buildList(planNotifier.plan)),
              SafeArea(child: Text(planNotifier.plan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    return Consumer<PlanNotifier>(
      builder: (context, planNotifier, child) {
        return ListTile(
          leading: Checkbox(
            value: task.complete,
            onChanged: (selected) {
              Plan currentPlan = planNotifier.plan;
              planNotifier.updatePlan(
                Plan(
                  name: currentPlan.name,
                  tasks: List<Task>.from(currentPlan.tasks)
                    ..[index] = Task(
                      description: task.description,
                      complete: selected ?? false,
                    ),
                ),
              );
            },
          ),
          title: TextFormField(
            initialValue: task.description,
            onChanged: (text) {
              Plan currentPlan = planNotifier.plan;
              planNotifier.updatePlan(
                Plan(
                  name: currentPlan.name,
                  tasks: List<Task>.from(currentPlan.tasks)
                    ..[index] = Task(
                      description: text,
                      complete: task.complete,
                    ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    return Consumer<PlanNotifier>(
      builder: (context, planNotifier, child) {
        return FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Plan currentPlan = planNotifier.plan;
            planNotifier.updatePlan(
              Plan(
                name: currentPlan.name,
                tasks: List<Task>.from(currentPlan.tasks)..add(const Task()),
              ),
            );
          },
        );
      },
    );
  }
}
