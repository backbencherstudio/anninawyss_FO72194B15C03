import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/analytics_item_model.dart';

final analyticsProvider = Provider<List<AnalyticsItemModel>>((ref) {
  return [
    AnalyticsItemModel(
      title: "Average Mood (Daily Check-In)",
      content:
      "This section shows your emotional trends based on your daily check-ins.",
    ),
    AnalyticsItemModel(
      title: "Module 2: Self-Test",
      content:
      "Your self-test results help you understand your emotional response patterns.",
    ),
    AnalyticsItemModel(
      title: "Module 9: Self-Care Check",
      content:
      "This evaluates how well you are taking care of your emotional and physical needs.",
    ),
    AnalyticsItemModel(
      title: "Module 12: My Attachment Type",
      content:
      "This section explains your attachment style based on your answers.",
    ),
    AnalyticsItemModel(
      title: "Emotional Triggers",
      content:
      "Track recurring emotional reactions and learn healthier coping mechanisms.",
    ),
    AnalyticsItemModel(
      title: "Relationship Patterns",
      content:
      "Understand your relationship behavior and identify unhealthy cycles.",
    ),
    // You can keep adding more — up to 60+
  ];
});
