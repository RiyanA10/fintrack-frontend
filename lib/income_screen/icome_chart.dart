import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class IncomeChartBar extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  IncomeChartBar({Key? key}) : super(key: key);
  @override
  IncomeChartBarState createState() => IncomeChartBarState();
}

final List<Color> colorC = [
  Colors.red,
  Colors.black,
  Colors.amber,
];

class IncomeChartBarState extends State<IncomeChartBar> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    data = [
      _ChartData(
        '2-8',
        30,
      ),
      _ChartData(
        '9-15',
        21,
      ),
      _ChartData(
        '16-22',
        13,
      ),
      _ChartData(
        '23-29',
        6.4,
      ),
      _ChartData('30-1', 14),
      // _ChartData('SAT', 17),
      // _ChartData('SUN', 15),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(
              isVisible: true,
            ),
            primaryYAxis: NumericAxis(
              isVisible: false,
            ),
            tooltipBehavior: _tooltip,
            series: <CartesianSeries<_ChartData, String>>[
              ColumnSeries<_ChartData, String>(
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                  dataSource: data,
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  name: 'Gold',
                  color: Colors.amber)
            ]));
  }
}

class _ChartData {
  _ChartData(
    this.x,
    this.y,
  );
  final String x;
  final double y;
}

int? index;
