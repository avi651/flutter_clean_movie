import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movie_clean/core/shared/langauge/langauge_utils.dart';
import 'package:movie_clean/core/theme/theme_data/text_theme.dart';
import 'package:movie_clean/domain/language/language_service.dart';
import 'package:movie_clean/generated/codegen_loader.g.dart';
import 'package:movie_clean/presentation/widgets/f_color_builder.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  static const String path = '/language';

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage>
    with WidgetsBindingObserver {
  late final List<Locale> appLanguages;
  Locale? selectedLocale;

  final LanguageService languageService = LanguageService.to;

  @override
  void initState() {
    super.initState();

    appLanguages =
        CodegenLoader.mapLocales.keys.map((e) => e.toLocale()).toList()
          ..sort((a, b) => a.languageCode.compareTo(b.languageCode));

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    selectedLocale ??= languageService.getCurrentLocale(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('language'.tr()), // use localization key if available
      ),
      body: ListView.builder(
        itemCount: appLanguages.length,
        itemBuilder: (context, index) {
          final locale = appLanguages[index];

          return _LanguageTile(
            locale: locale,
            groupValue: selectedLocale,
            onChanged: (newLocale) async {
              if (newLocale == selectedLocale) return;

              setState(() {
                selectedLocale = newLocale;
              });

              await context.setLocale(newLocale); // 🔥 apply language
            },
          );
        },
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.locale,
    required this.groupValue,
    required this.onChanged,
  });

  final Locale locale;
  final Locale? groupValue;
  final ValueChanged<Locale> onChanged;

  @override
  Widget build(BuildContext context) {
    final isSelected = locale == groupValue;

    return FColorBuilder(
      builder: (context, colors) {
        return ListTile(
          onTap: () => onChanged(locale),
          leading: Radio<Locale>(
            value: locale,
            groupValue: groupValue, // ✅ main fix
            onChanged: (value) {
              if (value != null) onChanged(value);
            },
          ),
          title: Text(
            LangaugeUtils().langaugeName(locale.languageCode) ??
                locale.languageCode.toUpperCase(),
            style: textTheme.bodyBold.copyWith(
              color: isSelected ? colors.primary.v100 : colors.neutral.v100,
            ),
          ),
        );
      },
    );
  }
}
