import 'package:flutter/material.dart';

class BaseNavigator extends StatefulWidget {
  final Route<dynamic>? Function(RouteSettings)? onGenerateRoute;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BaseNavigator({
    Key? key,
    this.onGenerateRoute,
  }) : super(key: key);

  void goToRoot() {
    navigatorKey.currentState?.popUntil((route) => route.isFirst);
  }

  @override
  _BaseNavigatorState createState() => _BaseNavigatorState();
}

class _BaseNavigatorState extends State<BaseNavigator>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return WillPopScope(
      onWillPop: () async {
        if (widget.navigatorKey.currentState!.canPop()) {
          widget.navigatorKey.currentState!.maybePop();
          return false;
        }
        return true;
      },
      child: Navigator(
        key: widget.navigatorKey,
        onGenerateRoute: widget.onGenerateRoute,
      ),
    );
  }
}
