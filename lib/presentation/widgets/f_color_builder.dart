import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:movie_clean/core/theme/app_colors.dart';
import 'package:movie_clean/core/theme/bloc/theme_bloc.dart';
import 'package:movie_clean/core/theme/bloc/theme_state.dart';
import 'package:movie_clean/core/theme/interfaces/app_colors_inteface.dart';

class FColorBuilder extends StatelessWidget {
  const FColorBuilder({super.key, required this.builder});

  final Widget Function(BuildContext context, AppColorsInterface colors)
  builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: Modular.get<ThemeBloc>(),
      builder: (_, _) {
        return builder(context, AppColors.current);
      },
    );
  }
}
