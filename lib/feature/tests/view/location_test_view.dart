import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/location/app_location.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';
import 'package:food_fiesta/product/widget/text/title_text.dart';

@RoutePage()
class LocationTestView extends StatefulWidget {
  const LocationTestView({super.key});

  @override
  State<LocationTestView> createState() => _LocationTestViewState();
}

class _LocationTestViewState extends State<LocationTestView> {
  final currentLoc = AppLocation.getDeterminePosition();
  ValueNotifier<String> currentPosition = ValueNotifier('Test');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
            valueListenable: currentPosition,
            builder: (context, value, child) {
              return TitleText(
                text: value,
                maxLines: 5,
              );
            },
          ),
          AppButton(
            title: 'Get Location',
            onPressed: () async {
              final position = await currentLoc;
              currentPosition.value = position.toString();
            },
          ),
        ],
      ),
    );
  }
}
