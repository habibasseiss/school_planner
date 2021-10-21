
import 'package:flutter/material.dart';
import 'package:school_planner/src/sample_feature/sample_item.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({Key? key}) : super(key: key);

  static const routeName = '/sample_item';
  

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as SampleItem;
    return Scaffold(
      appBar: AppBar(
        title:  Text(item.title),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
