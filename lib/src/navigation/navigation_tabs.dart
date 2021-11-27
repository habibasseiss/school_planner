import 'package:flutter/material.dart';
import 'package:school_planner/src/forms/task.dart';
import 'package:school_planner/src/home/home_view.dart';
import 'package:school_planner/src/navigation/base_navigator.dart';
import 'package:school_planner/src/sample_feature/Tasks_details_view.dart';
import 'package:school_planner/src/sample_feature/Tasks_list_view.dart';
import 'package:school_planner/src/settings/settings_view.dart';

class NavigationTabs {
  static List<NavigationTab> tabs = [
    NavigationTab(
      label: 'Início',
      icon: const Icon(Icons.home_outlined),
      activeIcon: const Icon(Icons.home),
      page: BaseNavigator(
        onGenerateRoute: (RouteSettings routeSettings) {
          return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              switch (routeSettings.name) {
                case HomeView.routeName:
                default:
                  return const HomeView();
              }
            },
          );
        },
      ),
    ),
    NavigationTab(
      label: 'Atividades',
      icon: const Icon(Icons.format_list_bulleted_outlined),
      activeIcon: const Icon(Icons.format_list_bulleted),
      page: BaseNavigator(
        onGenerateRoute: (RouteSettings routeSettings) {
          return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              switch (routeSettings.name) {
                // Task form
                case TaskForm.routeName:
                  return const TaskForm();
                // Sample Item Details Page
                case SampleItemDetailsView.routeName:
                  final id = routeSettings.arguments as int;
                  return SampleItemDetailsView(id: id);
                // Sample Item List Page
                case SampleItemListView.routeName:
                default:
                  return const SampleItemListView();
              }
            },
          );
        },
      ),
    ),
    NavigationTab(
      label: 'Calendário',
      icon: const Icon(Icons.event_available_outlined),
      activeIcon: const Icon(Icons.event_available),
      page: BaseNavigator(
        onGenerateRoute: (RouteSettings routeSettings) {
          return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              return Container();
            },
          );
        },
      ),
    ),
    NavigationTab(
      label: 'Opções',
      icon: const Icon(Icons.settings_outlined),
      activeIcon: const Icon(Icons.settings),
      page: BaseNavigator(
        onGenerateRoute: (RouteSettings routeSettings) {
          return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              return const SettingsView();
            },
          );
        },
      ),
    ),
  ];
}

class NavigationTab {
  final BaseNavigator page;
  final String label;
  final Widget icon;
  final Widget activeIcon;

  NavigationTab({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.page,
  });
}
