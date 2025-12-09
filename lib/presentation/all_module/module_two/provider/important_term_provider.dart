import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/module_two_model.dart';

final importantTermProvider = Provider<List<ModuleTwoItemModel>>((ref) {
  return [
    ModuleTwoItemModel(
      title: "Love Bombing",
      content:
          "=>Overwhelming someone with attention and affection to gain control.",
    ),
    ModuleTwoItemModel(
      title: "Gaslighting",
      content:
          "=>Manipulating someone into doubting their own reality or memory.",
    ),
    ModuleTwoItemModel(
      title: "Silent Treatment",
      content: "=>Withdrawing communication to punish or control someone.",
    ),
    ModuleTwoItemModel(title: "Flying Monkeys", content: "=>Enlisting others to manipulate, intimidate, or influence a target."),
    ModuleTwoItemModel(title: "Triangulation", content: "=>Using a third party to create conflict or gain leverage in a relationship."),
    ModuleTwoItemModel(title: "Future Faking", content: "=>Making promises about the future to manipulate or control."),
    ModuleTwoItemModel(title: "Hoovering", content: "=>Attempting to pull someone back into a toxic relationship after a breakup."),
    ModuleTwoItemModel(title: "Blame Shifting", content: "=>Deflecting responsibility onto others to avoid accountability."),
    ModuleTwoItemModel(title: "Breadcrumbing", content: "=>Giving minimal attention or affection to keep someone hooked."),
    ModuleTwoItemModel(title: "Ghosting", content: "=>Abruptly cutting off all communication without explanation."),
    ModuleTwoItemModel(title: "Grey Rock", content: "=>Acting emotionally dull or unresponsive to avoid conflict or manipulation."),
    ModuleTwoItemModel(title: "Trauma Bond", content: "=>Emotional attachment formed through cycles of abuse and intermittent reinforcement."),
    ModuleTwoItemModel(title: "Co-narcissism", content: "=>A pattern where someone enables or supports a narcissist’s behavior."),
    ModuleTwoItemModel(title: "Cognitive Dissonance", content: "=>The mental discomfort when holding conflicting beliefs, often experienced in toxic relationships."),
  ];
});
