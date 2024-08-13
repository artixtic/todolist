import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ListViewSeperatedWidget<T> extends StatelessWidget {
  NullableIndexedWidgetBuilder itemBuilder;
  BuiltList<T>? list;
  ScrollPhysics? physics;
  IndexedWidgetBuilder? separatorBuilder;
  Axis? scrollDirection;
  ListViewSeperatedWidget(
      {super.key,
      required this.itemBuilder,
      required this.list,
      this.scrollDirection = Axis.vertical,
      this.physics = const NeverScrollableScrollPhysics(),
      this.separatorBuilder});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: physics,
        scrollDirection: scrollDirection!,
        itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder ??
            (context, index) {
              return Container(
                  height: scrollDirection == Axis.vertical ? 2.h : 0,
                  width: scrollDirection == Axis.vertical ? 0 : 2.h);
            },
        itemCount: list!.length);
  }
}
