import 'package:flutter/material.dart';
import 'package:focus_mate/app/settings/presentation/settings_view.dart';
import 'package:focus_mate/app/stats/presentation/graphs_view.dart';
import 'package:go_router/go_router.dart';
import 'package:focus_mate/app/developer_menu/presentation/page.dart';
import 'package:focus_mate/app/home/presentation/page.dart';
import 'package:focus_mate/app/splash/presentation/page.dart';

part 'app_router.g.dart';

@TypedGoRoute<HomePageRoute>(
  path: HomePageRoute.path,
  name: HomePageRoute.name,
  routes: [
    TypedGoRoute<SettingsPageRoute>(
      path: SettingsPageRoute.path,
      name: SettingsPageRoute.name,
    ),
    TypedGoRoute<StatsPageRoute>(
      path: StatsPageRoute.path,
      name: StatsPageRoute.name,
    ),
    // Other routes nested under the home route
  ],
)
class HomePageRoute extends GoRouteData {
  static const path = '/';
  static const name = 'home';
  const HomePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class SettingsPageRoute extends GoRouteData {
  static const path = 'settings';
  static const name = 'settings';
  const SettingsPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsView();
}

class StatsPageRoute extends GoRouteData {
  static const path = 'stats';
  static const name = 'stats';
  const StatsPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const GraphsView();
}

@TypedGoRoute<SplashPageRoute>(
  path: SplashPageRoute.path,
  name: SplashPageRoute.name,
)
class SplashPageRoute extends GoRouteData {
  static const path = '/splash';
  static const name = 'splash';
  const SplashPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashPage();
}

@TypedGoRoute<DeveloperMenuPageRoute>(
  path: DeveloperMenuPageRoute.path,
  name: DeveloperMenuPageRoute.name,
)
class DeveloperMenuPageRoute extends GoRouteData {
  static const path = '/developerMenu';
  static const name = 'developerMenu';
  const DeveloperMenuPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DeveloperMenuPage();
}
