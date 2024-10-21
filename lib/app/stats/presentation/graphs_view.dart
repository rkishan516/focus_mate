import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:focus_mate/app/stats/notifiers/graphs_view_notifier.dart';
import 'package:focus_mate/app/stats/state/graphs_view_state.dart';
import 'package:supercharged/supercharged.dart';

class GraphsView extends ConsumerWidget {
  const GraphsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(graphsNotifierProvider);
    final notifier = ref.watch(graphsNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Stats'),
      ),
      body: SafeArea(
        child: Center(
          child: StatsBarChart(graphState: state),
        ),
      ),
    );
  }
}

class StatsBarChart extends StatefulWidget {
  const StatsBarChart({super.key, required this.graphState});
  final GraphsViewState graphState;
  @override
  State<StatefulWidget> createState() => StatsBarChartState();
}

class StatsBarChartState extends State<StatsBarChart> {
  final double width = 7;

  @override
  Widget build(BuildContext context) {
    final backDrawRodData = BackgroundBarChartRodData(
      show: true,
      color: Colors.white38,
      toY: widget.graphState.data.values
          .maxBy((a, b) => a.$1.compareTo(b.$1))
          ?.$1
          .toDouble(),
    );
    final showingBarGroups = widget.graphState.data.entries.map((e) {
      return BarChartGroupData(
        barsSpace: 4,
        x: e.key.weekday - 1,
        barRods: [
          BarChartRodData(
            toY: e.value.$1.toDouble(),
            color: Theme.of(context).colorScheme.primary,
            width: width,
            backDrawRodData: backDrawRodData,
          ),
          BarChartRodData(
            toY: e.value.$2.toDouble(),
            color: Theme.of(context).colorScheme.secondary,
            width: width,
            backDrawRodData: backDrawRodData,
          ),
          BarChartRodData(
            toY: e.value.$3.toDouble(),
            color: Theme.of(context).colorScheme.tertiary,
            width: width,
            backDrawRodData: backDrawRodData,
          ),
        ],
      );
    }).toList();
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BarChart(
          BarChartData(
            barTouchData: BarTouchData(
              touchTooltipData: BarTouchTooltipData(
                getTooltipColor: ((group) {
                  return Colors.grey;
                }),
                getTooltipItem: (a, b, c, d) => null,
              ),
            ),
            titlesData: FlTitlesData(
              show: true,
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: bottomTitles,
                  reservedSize: 42,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 28,
                  interval: 1,
                  getTitlesWidget: leftTitles,
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            barGroups: showingBarGroups,
            gridData: const FlGridData(show: false),
          ),
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(
        value.toInt().toString(),
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(color: Color(0xff7589a2)),
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Mn', 'Te', 'Wd', 'Tu', 'Fr', 'St', 'Su'];

    final Widget text = Text(
      titles[value.toInt()],
      style: Theme.of(context)
          .textTheme
          .labelMedium
          ?.copyWith(color: Color(0xff7589a2)),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }
}
