import 'package:freezed_annotation/freezed_annotation.dart';

part 'graphs_view_state.freezed.dart';

@freezed
class GraphsViewState with _$GraphsViewState {
  const factory GraphsViewState({
    required Map<DateTime, (int focus, int rest, int longRest)> data,
  }) = _GraphsViewState;
}
