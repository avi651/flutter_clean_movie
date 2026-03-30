import 'package:collection/collection.dart';

extension IterableExt<T> on Iterable<T> {
  List<T> seperated({required T seperator}) {
    final seperatedChildren = <T>[];
    for (var i = 0; i < (length * 2) - 1; i++) {
      final itemIndex = i ~/ 2;
      if (i.isOdd && i != 0) {
        seperatedChildren.add(seperator);
      } else {
        seperatedChildren.add(elementAt(itemIndex));
      }
    }
    return seperatedChildren;
  }

  List<T> seperatedAround({required T seperator}) {
    final sep = seperated(seperator: seperator);

    if (sep.isEmpty) {
      return <T>[];
    }
    return [seperator, ...sep, seperator];
  }

  Iterable<T> intersperse(T itemBetween) sync* {
    var index = 0;
    for (final item in this) {
      if (index != 0) {
        yield itemBetween;
      }

      yield item;
      index++;
    }
  }

  Iterable<T> mapFirst(T Function(T element) convert) {
    return mapIndexed(
      (index, element) => index == 0 ? convert(element) : element,
    );
  }
}
