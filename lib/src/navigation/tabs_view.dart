import 'package:flutter/material.dart';
import 'package:school_planner/src/navigation/navigation_tabs.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  int currentTab = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: NavigationTabs.tabs.map((e) => e.page).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
          pageController.jumpToPage(index);
        },
        items: <BottomNavigationBarItem>[
          for (final tabItem in NavigationTabs.tabs)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              activeIcon: tabItem.activeIcon,
              label: tabItem.label,
            ),
        ],
      ),
    );
  }
}
