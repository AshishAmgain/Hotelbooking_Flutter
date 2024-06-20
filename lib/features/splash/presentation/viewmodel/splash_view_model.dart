import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_book/features/splash/presentation/navigator/splash_navigator.dart';

final splashViewModelProvider =
    StateNotifierProvider<SplashViewModel, void>((ref) {
  final navigator = ref.read(splashViewNavigatorProvider);
  return SplashViewModel(navigator);
});

class SplashViewModel extends StateNotifier<void> {
  SplashViewModel(this.navigator) : super(null);
  final SplashViewNavigator navigator;
  void openLoginView() {
    Future.delayed(const Duration(seconds: 2), () {
      navigator.openLoginView();
    });
  }
}
