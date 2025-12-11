import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/legacy.dart';

// StateNotifier to track which items are expanded
class WithdrawalPlanNotifier extends StateNotifier<List<bool>> {
  WithdrawalPlanNotifier(int itemCount) : super(List.generate(itemCount, (_) => false));

  void toggle(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) !state[i] else state[i],
    ];
  }
}

// Provider
final withdrawalPlanProvider = StateNotifierProvider<WithdrawalPlanNotifier, List<bool>>(
      (ref) => WithdrawalPlanNotifier(3), // 5 items
);
