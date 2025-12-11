import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/legacy.dart';

// StateNotifier to track which items are expanded
class ExpandedListNotifier extends StateNotifier<List<bool>> {
  ExpandedListNotifier(int itemCount) : super(List.generate(itemCount, (_) => false));

  void toggle(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) !state[i] else state[i],
    ];
  }
}

// Provider
final expandedListProvider = StateNotifierProvider<ExpandedListNotifier, List<bool>>(
      (ref) => ExpandedListNotifier(6), // 5 items
);
