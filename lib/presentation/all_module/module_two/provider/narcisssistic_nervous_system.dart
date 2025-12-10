import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/module_two_model.dart';


final narcissisticNervousProvider = Provider<List<ModuleTwoItemModel>>((ref) {
  return [
    ModuleTwoItemModel(
        title: "Survival reactions",
        content:
        "=>Fight, flight, freeze, or fawn responses activate automatically to protect from perceived danger."
    ),
    ModuleTwoItemModel(
        title: "How the brain functions during trauma?",
        content:
        "=>The brain becomes hyper-alert, focusing on threat detection while emotional regulation and rational thinking are impaired."),
  ];
});
