import 'package:focus_mate/app/common/services/local_notification_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:focus_mate/app/routes/notifiers/app_router.dart';
import 'package:focus_mate/app/routes/notifiers/app_routes.dart';

part 'page_notifier.g.dart';

@riverpod
class SplashPageNotifier extends _$SplashPageNotifier {
  @override
  void build() {
    return;
  }

  Future<void> runStartUpLogic() async {
    await ref.read(localNotificationServiceProvider).init();
    ref.read(navigatorProvider).goNamed(HomePageRoute.name);
  }
}
