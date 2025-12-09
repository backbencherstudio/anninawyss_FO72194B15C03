import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/module_two_model.dart';

final cycleNarcissisticProvider = Provider<List<ModuleTwoItemModel>>((ref) {
  return [
    ModuleTwoItemModel(title: "Phase 1 : Love bombing", content: "=>Overwhelmed, flattered, and deeply connected, feeling idealized and special."),
    ModuleTwoItemModel(title: "Phase 2 : Criticism / Devaluation", content: "=>Confused, hurt, anxious, and doubting themselves as praise turns into criticism."),
    ModuleTwoItemModel(title: "Phase 3 : On-Off / Hoovering", content: "=>Hopeful yet insecure, torn between leaving and returning, often feeling trapped in a cycle."),
    ModuleTwoItemModel(title: "How those affected feel during these phases", content: "=>Overwhelming someone with attention and affection to gain control."),
  ];
});
