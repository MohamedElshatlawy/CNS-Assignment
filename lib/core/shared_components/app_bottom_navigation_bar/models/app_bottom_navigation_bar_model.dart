class AppBottomNavigationBarModel {
  final void Function(int) onTap;
  final int currentIndex;
  AppBottomNavigationBarModel({
    required this.onTap,
    required this.currentIndex,
  });
}
