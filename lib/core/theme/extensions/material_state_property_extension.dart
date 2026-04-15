import 'package:flutter/material.dart';

extension WidgetStatePropertyExt on Object {
  WidgetStateProperty<T> msAll<T>() {
    return WidgetStateProperty.all<T>(this as T);
  }

  WidgetStateProperty<T> materialPropertyBuilder<T>({
    T? pressed,
    T? disabled,
    T? hover,
  }) {
    final state = this as T;
    return WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.pressed)) {
        return pressed ?? state;
      }
      if (states.contains(WidgetState.disabled)) {
        return disabled ?? state;
      }
      if (states.contains(WidgetState.hovered)) {
        return hover ?? state;
      }
      return state;
    });
  }
}
