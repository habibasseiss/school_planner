import 'package:flutter/material.dart';

enum TaskType {
  test,
  homework,
  meeting,
}

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.type,
    this.alert = false,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final TaskType type;
  final bool alert;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      dense: true,
      title: Text(title, style: Theme.of(context).textTheme.bodyText2),
      subtitle: Text(subtitle),
      leading: getIcon(type),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('05/12',
                  style: Theme.of(context).textTheme.subtitle1!.apply(
                      fontSizeDelta: -3,
                      color: Colors.grey,
                      fontWeightDelta: 2)),
              Text('10:00',
                  style: Theme.of(context).textTheme.subtitle1!.apply(
                        fontSizeDelta: -2,
                      )),
            ],
          ),
          if (alert)
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(Icons.error, color: Colors.red),
            ),
        ],
      ),
    );
  }

  Widget getIcon(TaskType type) {
    IconData iconData;
    Color color;

    switch (type) {
      case TaskType.test:
        iconData = Icons.assignment;
        color = Colors.deepPurple;
        break;
      case TaskType.homework:
        iconData = Icons.auto_stories;
        color = Colors.deepOrange;
        break;
      case TaskType.meeting:
        iconData = Icons.people;
        color = Colors.teal;
        break;
    }

    return CircleAvatar(
      backgroundColor: color,
      child: Icon(iconData, color: Colors.white.withAlpha(220)),
    );
  }
}
