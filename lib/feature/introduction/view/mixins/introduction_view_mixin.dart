part of '../introduction_view.dart';

mixin IntroductionViewMixin on State<IntroductionView> {
  final int pageCount = 3;

  /// Page controller
  final PageController _pageController = PageController();

  final ValueNotifier<bool> _isLastPage = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _addPageViewListener;
  }

  @override
  void dispose() {
    super.dispose();
    _pageController
      ..removeListener(_lastPageListener)
      ..dispose();
  }

  void get _addPageViewListener => _pageController.addListener(_lastPageListener);

  void _lastPageListener() {
    if (_pageController.page == 2) {
      _isLastPage.value = true;
    } else {
      _isLastPage.value = false;
    }
  }

  void get _changePage => _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
}
