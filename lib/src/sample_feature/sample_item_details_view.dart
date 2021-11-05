import 'package:flutter/material.dart';
import 'package:school_planner/src/sample_feature/sample_item.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    final item = SampleItem.items.firstWhere((item) => item.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: const Center(child: Text('Mais informação aqui')),
    );
  }
}
