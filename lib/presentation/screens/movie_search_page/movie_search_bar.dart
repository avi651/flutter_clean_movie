import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/presentation/bloc/search_movie_cubit/search_movie_cubit.dart';
import 'package:movie_clean/presentation/widgets/f_animated_scale_y.dart';
import 'package:movie_clean/presentation/widgets/f_color_builder.dart';

class MovieSearchBar extends StatelessWidget {
  final TextEditingController searchFieldController;
  final FocusNode searchFocusNode;

  const MovieSearchBar({
    super.key,
    required this.searchFieldController,
    required this.searchFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchMovieCubit, SearchMovieFetchState>(
      bloc: Modular.get<SearchMovieCubit>(),
      builder: (context, state) {
        return Column(
          children: [
            _SearchTextField(
              controller: searchFieldController,
              focusNode: searchFocusNode,
              isLoading: state.isBusy,
            ),

            FAnimatedScaleY(visible: state.isBusy, child: const _Loading()),
          ],
        );
      },
    );
  }
}

class _SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isLoading;

  const _SearchTextField({
    required this.controller,
    required this.focusNode,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = Modular.get<SearchMovieCubit>();

    return FColorBuilder(
      builder: (context, colors) {
        return ValueListenableBuilder<TextEditingValue>(
          valueListenable: controller,
          builder: (_, value, __) {
            return SizedBox(
              height: 56,

              child: TextField(
                controller: controller,
                focusNode: focusNode,

                cursorColor: colors.neutral.v100,

                style: TextStyle(color: colors.neutral.v100, fontSize: 16),

                textInputAction: TextInputAction.search,

                onChanged: cubit.search,

                decoration: InputDecoration(
                  hintText: "Search Movies",

                  hintStyle: TextStyle(color: colors.neutral.v60),

                  filled: true,

                  fillColor: colors.neutral.v10,

                  prefixIcon: Icon(Icons.search, color: colors.neutral.v60),

                  suffixIcon: _ClearButton(
                    controller: controller,
                    isLoading: isLoading,
                  ),

                  contentPadding: const EdgeInsets.symmetric(vertical: 16),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: colors.neutral.v40),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: colors.neutral.v70),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _ClearButton extends StatelessWidget {
  final TextEditingController controller;
  final bool isLoading;

  const _ClearButton({required this.controller, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    final cubit = Modular.get<SearchMovieCubit>();

    if (isLoading) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    if (controller.text.isEmpty) {
      return const SizedBox.shrink();
    }

    return IconButton(
      splashRadius: 20,
      icon: const Icon(Icons.close),
      onPressed: () {
        controller.clear();

        cubit.clear();
      },
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 6),
      child: LinearProgressIndicator(minHeight: 2),
    );
  }
}
