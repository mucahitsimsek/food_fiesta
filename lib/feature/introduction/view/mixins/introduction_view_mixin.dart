part of '../introduction_view.dart';

mixin IntroductionViewMixin on State<IntroductionView> {
  /// Page controller
  final PageController _pageController = PageController();

  final ValueNotifier<bool> _isLastPage = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _addPageViewListener;
  }

  void get _addPageViewListener => _pageController.addListener(() {
        if (_pageController.page == 2) {
          _isLastPage.value = true;
        } else {
          _isLastPage.value = false;
        }
      });

  void get _changePage => _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
}
