import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/module_two_model.dart';


final narcissismProvider = Provider<List<ModuleTwoItemModel>>((ref) {
  return [
    ModuleTwoItemModel(
      title: "Grandiose Narcissism",
      content:
      "Characterized by overt self-importance, confidence, and dominance. Individuals seek admiration openly and often display arrogance. They may appear charming but can be controlling or dismissive of others’ feelings.",
    ),
    ModuleTwoItemModel(
      title: "Vulnerable / Covert Narcissism",
      content:
      "Marked by hypersensitivity, insecurity, and introversion. Individuals may feel unappreciated or victimized, and often harbor resentment. They seek validation subtly and may withdraw or show passive-aggressive behaviors.",
    ),
    ModuleTwoItemModel(
      title: "Malignant Narcissism",
      content:
      "A more severe form combining narcissistic traits with antisocial behavior, aggression, and lack of empathy. Individuals may exploit, intimidate, or manipulate others for personal gain, often causing significant harm in relationships and environments.",
    ),
    ModuleTwoItemModel(
      title: "Different Effects on the Environment",
      content:
      "=>Can cause emotional distress, confusion, or anxiety in others.\n =>May create toxic dynamics in personal, professional, or social settings.\n=>Can disrupt trust, collaboration, and healthy communication.\n=>In some cases, they may motivate or inspire, but often at the expense of others’ well-being.",
    ),
  ];
});
