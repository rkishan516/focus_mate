import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:focus_mate/app/home/state/page_state.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stats_repository.g.dart';

@riverpod
StatsRepository statsRepository(StatsRepositoryRef ref) {
  return StatsRepository(ref);
}

class StatsRepository {
  final Ref ref;
  StatsRepository(this.ref);

  Box? _statsBox;
  Future<void> init() async {
    _statsBox ??= await Hive.openBox('stats');
  }

  Future<void> addDurationType({required DurationType type}) async {
    if (_statsBox == null) await init();
    await _statsBox!.put(DateTime.now().toIso8601String(), type.name);
  }

  Map<DateTime, DurationType> get stats {
    return _statsBox!.toMap().cast<String, String>().map(
          (k, v) => MapEntry(
            DateTime.parse(k),
            DurationType.values.byName(v),
          ),
        );
  }
}
