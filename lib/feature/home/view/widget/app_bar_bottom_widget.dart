part of '.././home_page_view.dart';

class _HomePageAppBarBottomWidget extends StatelessWidget implements PreferredSizeWidget {
  const _HomePageAppBarBottomWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(),
        Row(
          children: [
            const Text('Istanbul'),
            DropdownButton(
              // elevation: 0,
              items: const [
                DropdownMenuItem<String>(
                  value: '1',
                  child: Text('2'),
                ),
                DropdownMenuItem<String>(
                  value: '1',
                  child: Text('1'),
                ),
                DropdownMenuItem<String>(
                  value: '1',
                  child: Text('1'),
                ),
                DropdownMenuItem<String>(
                  value: '1',
                  child: Text('1'),
                ),
                DropdownMenuItem<String>(
                  value: '1',
                  child: Text('1'),
                ),
              ],
              onChanged: (as) {},
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.5);
}
