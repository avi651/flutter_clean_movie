import 'package:flutter/material.dart';

/// This widget will do a vertically sliding open/close animation

const Duration kThemeAnimationDuration = Duration(microseconds: 200);

class FAnimatedScaleY extends ImplicitlyAnimatedWidget {
  final Widget child;
  final bool visible;

  const FAnimatedScaleY({
    required this.visible,
    required this.child,
    super.duration = kThemeAnimationDuration,
    super.curve = Curves.fastOutSlowIn,
    super.onEnd,
    super.key,
  });

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() =>
      _FAnimatedScaleY();
}

class _FAnimatedScaleY extends ImplicitlyAnimatedWidgetState<FAnimatedScaleY> {
  Tween<double>? _heightFactor;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    final newHeightFactor = widget.visible ? 1.0 : 0.0;
    _heightFactor =
        visitor(
              _heightFactor,
              newHeightFactor,
              (value) => Tween<double>(begin: value as double),
            )
            as Tween<double>?;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: widget.child,
      builder: (context, child) {
        if (_heightFactor?.evaluate(animation) == 0) {
          return const SizedBox.shrink();
        }
        return ClipRect(
          child: Align(
            heightFactor: _heightFactor?.evaluate(animation),
            child: child,
          ),
        );
      },
    );
  }
}
