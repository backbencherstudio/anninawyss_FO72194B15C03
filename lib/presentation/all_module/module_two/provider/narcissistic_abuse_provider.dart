import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/module_two_model.dart';


final narcissisticAbuseProvider = Provider<List<ModuleTwoItemModel>>((ref) {
  return [
    ModuleTwoItemModel(
      title: "Psychological signs",
      content:
"=>Anxiety, depression, low self-esteem, confusion, and emotional exhaustion."
    ),
    ModuleTwoItemModel(
      title: "Physical signs",
      content:
"=>Fatigue, headaches, sleep disturbances, tension, and stress-related health issues."),
  ];
});
