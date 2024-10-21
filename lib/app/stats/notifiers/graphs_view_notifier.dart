import 'package:focus_mate/app/home/repository/stats_repository.dart';
import 'package:focus_mate/app/home/state/page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:focus_mate/app/stats/state/graphs_view_state.dart';
import 'package:supercharged/supercharged.dart';

part 'graphs_view_notifier.g.dart';

@riverpod
class GraphsNotifier extends _$GraphsNotifier {
  @override
  GraphsViewState build() {
    load();
    return GraphsViewState(data: {});
  }

  void load() async {
    final statsRepo = ref.read(statsRepositoryProvider);
    await statsRepo.init();
    Map<DateTime, (int focus, int rest, int longRest)> dateDurationCountMap = {
      for (int i = 0; i < 7; i++) DateTime.now().add(i.days): (0, 0, 0),
    };
    statsRepo.stats.forEach((dateTime, durationType) {
      DateTime date = DateTime(dateTime.year, dateTime.month, dateTime.day);
      var currentCounts = dateDurationCountMap[date] ?? (0, 0, 0);
      dateDurationCountMap[date] = (
        currentCounts.$1 + (durationType == DurationType.focus ? 1 : 0),
        currentCounts.$2 + (durationType == DurationType.rest ? 1 : 0),
        currentCounts.$3 + (durationType == DurationType.longRest ? 1 : 0),
      );
    });
    state = state.copyWith(data: dateDurationCountMap);
  }
}
