import 'package:flutter/material.dart';

class TreeNodeData {
  Widget child;
  bool expanded;
  bool checked;
  dynamic extra;
  final Color? checkBoxCheckColor;
  final MaterialStateProperty<Color>? checkBoxFillColor;
  final ValueGetter<Color>? backgroundColor;
  final List<Widget>? customActions;
  List<TreeNodeData> children;

  TreeNodeData({
    required this.child,
    required this.expanded,
    required this.checked,
    required this.children,
    this.extra,
    this.checkBoxCheckColor,
    this.checkBoxFillColor,
    this.backgroundColor,
    this.customActions,
  });

  TreeNodeData.from(TreeNodeData other):
    this(child: other.child, expanded: other.expanded, checked: other.checked, extra: other.extra, children: other.children);

  @override
  String toString() {
    return 'TreeNodeData{child: $child, expanded: $expanded, checked: $checked, extra: $extra, ${children.length} children}';
  }
}
