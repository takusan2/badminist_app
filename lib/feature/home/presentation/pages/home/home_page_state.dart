import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_page_state.freezed.dart';

final homePageStateProvider =
    StateNotifierProvider<HomePageStateNotifier, HomePageState>(
  (ref) => HomePageStateNotifier(),
);

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({
    String? selectedCommunity,
  }) = _HomePageState;

  HomePageState._();
}

class HomePageStateNotifier extends StateNotifier<HomePageState> {
  HomePageStateNotifier() : super(HomePageState());

  void selectCommunity(String communityId) {
    state = state.copyWith(selectedCommunity: communityId);
  }
}
