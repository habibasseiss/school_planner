import 'package:flutter/material.dart';
import 'package:school_planner/src/models/task.dart';
import 'package:school_planner/src/tasks/Tasks_details_view.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {
  const SampleItemListView({Key? key}) : super(key: key);

  static const routeName = '/';

  void pressAddButton(BuildContext context) {
    // TODO: Add a new task
  }

  @override
  Widget build(BuildContext context) {
    final List<Task> items = Task.tasks;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        actions: [
          // if platform is ios
          if (Theme.of(context).platform == TargetPlatform.iOS)
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => pressAddButton(context),
            ),
        ],
      ),

      floatingActionButton: Theme.of(context).platform == TargetPlatform.android
          ? FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => pressAddButton(context),
            )
          : null,

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
              title: Text(item.title),
              leading: const CircleAvatar(
                // Display the Flutter Logo image asset.
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              onTap: () {
                // Navigate to the details page.
                Navigator.restorablePushNamed(
                  context,
                  SampleItemDetailsView.routeName,
                  arguments: item.id,
                );
              });
        },
      ),
    );
  }
}
