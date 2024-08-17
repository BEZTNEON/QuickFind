import 'package:flutter/material.dart';

class CustomWrap extends StatelessWidget {
  const CustomWrap(this.children, {super.key, this.padding});

  final List<Widget> children;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Wrap(
        spacing: 6,
        runSpacing: 5,
        children: children,
      ),
    );
  }
}
