import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';

class MoodAnalyticsChart extends StatefulWidget {
  const MoodAnalyticsChart({super.key});

  @override
  State<MoodAnalyticsChart> createState() => _MoodAnalyticsChartState();
}

class _MoodAnalyticsChartState extends State<MoodAnalyticsChart> {
  String _selectedPeriod = 'Weekly'; // 'Weekly' or 'Monthly'

  // Weekly Data (7 days)
  final List<FlSpot> _weeklySpots = [
    FlSpot(0, 4.5), // Monday
    FlSpot(1, 3.8), // Tuesday
    FlSpot(2, 5.0), // Wednesday
    FlSpot(3, 2.5), // Thursday
    FlSpot(4, 4.2), // Friday
    FlSpot(5, 3.9), // Saturday
    FlSpot(6, 4.8), // Sunday
  ];

  final List<String> _weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  // Monthly Data (last 30 days)
  final List<FlSpot> _monthlySpots = [
    FlSpot(0, 4.2), FlSpot(1, 3.5), FlSpot(2, 4.8), FlSpot(3, 3.2),
    FlSpot(4, 4.0), FlSpot(5, 4.5), FlSpot(6, 3.8), FlSpot(7, 4.2),
    FlSpot(8, 3.9), FlSpot(9, 4.1), FlSpot(10, 3.7), FlSpot(11, 4.3),
    FlSpot(12, 4.6), FlSpot(13, 3.4), FlSpot(14, 4.0), FlSpot(15, 4.7),
    FlSpot(16, 3.6), FlSpot(17, 4.4), FlSpot(18, 3.8), FlSpot(19, 4.1),
    FlSpot(20, 4.3), FlSpot(21, 3.9), FlSpot(22, 4.5), FlSpot(23, 3.7),
    FlSpot(24, 4.2), FlSpot(25, 4.0), FlSpot(26, 3.6), FlSpot(27, 4.4),
    FlSpot(28, 3.8), FlSpot(29, 4.6),
  ];

  final List<String> _monthDays = List.generate(30, (index) => '${index + 1}');

  @override
  Widget build(BuildContext context) {
    final currentSpots = _selectedPeriod == 'Weekly' ? _weeklySpots : _monthlySpots;
    final currentLabels = _selectedPeriod == 'Weekly' ? _weekDays : _monthDays;

    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mood",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF1F2937),
                ),
              ),

              // Dropdown
              _buildPeriodDropdown(),
            ],
          ),

          SizedBox(height: 16.h),

          // Divider
          Divider(
            height: 1,
            color: Colors.grey.shade200,
            thickness: 1,
          ),

          SizedBox(height: 24.h),

          // Bar Chart
          SizedBox(
            height: 200.h,
            child: BarChart(
              BarChartData(
                barTouchData: BarTouchData(
                  enabled: true,
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      final dayLabel = currentLabels[groupIndex];
                      final value = rod.toY;
                      return BarTooltipItem(
                        '$dayLabel\n${value.toStringAsFixed(1)}',
                        const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    },
                  ),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final index = value.toInt();
                        if (index >= 0 && index < currentLabels.length) {
                          // For monthly view, show only every 5th day
                          if (_selectedPeriod == 'Monthly' && index % 5 != 0) {
                            return Container();
                          }
                          return Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              currentLabels[index],
                              style: TextStyle(
                                fontSize: _selectedPeriod == 'Weekly' ? 12.sp : 10.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF6B7280),
                              ),
                            ),
                          );
                        }
                        return Container();
                      },
                      reservedSize: _selectedPeriod == 'Weekly' ? 40 : 30,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        if (value % 1 == 0) {
                          return Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: Text(
                              value.toInt().toString(),
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: const Color(0xFF9CA3AF),
                              ),
                            ),
                          );
                        }
                        return Container();
                      },
                      reservedSize: 30,
                      interval: 1,
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  drawHorizontalLine: true,
                  horizontalInterval: 1,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: const Color(0xFFF3F4F6),
                      strokeWidth: 1,
                    );
                  },
                ),
                barGroups: currentSpots.asMap().entries.map((entry) {
                  final index = entry.key;
                  final spot = entry.value;

                  return BarChartGroupData(
                    x: index,
                    barRods: [
                      BarChartRodData(
                        toY: spot.y,
                        width: _selectedPeriod == 'Weekly' ? 16.w : 6.w,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.r),
                          topRight: Radius.circular(4.r),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF2A4566), // Dark blue
                            const Color(0xFF647D9F), // Light blue
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        backDrawRodData: BackgroundBarChartRodData(
                          show: true,
                          toY: 5,
                          color: const Color(0xFFF3F4F6),
                        ),
                      ),
                    ],
                    showingTooltipIndicators: [0],
                  );
                }).toList(),
                minY: 0,
                maxY: 5,
                alignment: BarChartAlignment.center,
              ),
            ),
          ),

          SizedBox(height: 16.h),

          // Legend
         _buildChartLegend(),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Color(0Xff000000),
              borderRadius: BorderRadius.circular(10.r),
            ),
          child: Row(

            children: [
              Image.asset(
                "assets/icons/light_icon.png",
                height: 24.h,
                width: 24.w,
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Text("You’re most Happy on Tuesday, keep it consistent all week!",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }

  Widget _buildPeriodDropdown() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedPeriod,
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: 20.r,
            color: const Color(0xFF6B7280),
          ),
          elevation: 0,
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xFF374151),
            fontWeight: FontWeight.w500,
          ),
          onChanged: (String? newValue) {
            setState(() {
              _selectedPeriod = newValue!;
            });
          },
          items: ['Weekly', 'Monthly'].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildChartLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 12.r,
          height: 12.r,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF2A4566),
                Color(0xFF647D9F),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(2.r),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          "Mood Level (1-5)",
          style: TextStyle(
            fontSize: 12.sp,
            color: const Color(0xFF6B7280),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10.h,),


      ],

    );
  }
}