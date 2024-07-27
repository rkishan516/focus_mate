import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supercharged/supercharged.dart';
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
    await 3.seconds.delay;

    ref.read(navigatorProvider).goNamed(HomePageRoute.name);
  }
}
