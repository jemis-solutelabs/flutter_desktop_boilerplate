import 'package:animations/animations.dart';
import 'package:flutter/widgets.dart';
///
class Routes {
  ///
  static const String home = '/';
  ///
  static const String post = 'post';
  ///
  static const String style = 'style';
/// FadeIn Routes
  static Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
          {int duration = 300}) =>
      PageRouteBuilder<T>(
        settings: settings,
        transitionDuration: Duration(milliseconds: duration),
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            page(context),
        transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) =>
            FadeScaleTransition(animation: animation, child: child),
      );
}
