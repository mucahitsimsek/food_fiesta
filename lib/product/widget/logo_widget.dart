import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/utility/constants/enums/app_values.dart';
import 'package:architecture_template/product/widget/gap/app_gap.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logowidget', // Benzersiz bir değer kullanılabilir
      key: UniqueKey(), // Rastgele bir değer kullanılıyor
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.logoIcon.svg(),
          const AppGap.small(),
          Text(
            LocaleKeys.logo_title,
            textAlign: TextAlign.center,
            style: DefaultTextStyle.of(context).style.copyWith(
                  fontSize: AppValues.extraLarge.value,
                  fontWeight: FontWeight.bold,
                ),
          ).tr(),
        ],
      ),
    );
  }
}
