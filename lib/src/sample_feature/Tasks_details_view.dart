import 'package:flutter/material.dart';
import 'package:school_planner/src/sample_feature/Task.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  static const routeName = '/task';

  @override
  Widget build(BuildContext context) {
    final task = Task.tasks.firstWhere((task) => task.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text(task.title),
      ),
      body: const Center(child: Text('Mais informação aqui')),
    );
  }
}
