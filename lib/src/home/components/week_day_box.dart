import 'dart:math';

import 'package:flutter/material.dart';

class WeekDayBox extends StatelessWidget {
  final int weekDay;

  const WeekDayBox(this.weekDay, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Text(getWeekDay(weekDay + 1),
              style: Theme.of(context).textTheme.headline6!.apply(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeightDelta: -2,
                    fontSizeDelta: -4,
                  )),
          const SizedBox(height: 8),
          Text((weekDay + 1).toString(),
              style: Theme.of(context).textTheme.headline6!.apply(
                    fontSizeDelta: -6,
                  )),
          const SizedBox(height: 8),
          Row(children: [
            for (var i = 0; i < Random().nextInt(3); i++) const DotIndicator()
          ])
        ],
      ),
    );
  }

  // get week day from int
  static String getWeekDay(int weekDay) {
    switch (weekDay) {
      case 1:
        return 'S';
      case 2:
        return 'T';
      case 3:
        return 'Q';
      case 4:
        return 'Q';
      case 5:
        return 'S';
      case 6:
        return 'S';
      case 7:
        return 'D';
      default:
        return '?';
    }
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
