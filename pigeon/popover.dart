import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class PopOverAPI {
  bool togglePopOver();
  bool toggleRunningTimer();
}

@FlutterApi()
abstract class MenuBarActions {
  void toggleRunningTimer();
}