import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/legacy.dart';

// StateNotifier to track which items are expanded
class ThoughtCheckNotifier extends StateNotifier<List<bool>> {
  ThoughtCheckNotifier(int itemCount) : super(List.generate(itemCount, (_) => false));

  void toggle(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) !state[i] else state[i],
    ];
  }
}

// Provider
final thoughtCheckProvider = StateNotifierProvider<ThoughtCheckNotifier, List<bool>>(
      (ref) => ThoughtCheckNotifier(1), // 5 items
);
