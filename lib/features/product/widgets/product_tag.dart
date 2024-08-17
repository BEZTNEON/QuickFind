import 'package:flutter/material.dart';

enum TagColors { warning, information, attention, hint }

class ProductTag extends StatelessWidget {
  const ProductTag(this.tag, {super.key, this.color, this.onTap});

  final String tag;
  final TagColors? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: switch (color) {
            null => colorScheme.onInverseSurface.withOpacity(0.7),
            TagColors.warning => colorScheme.errorContainer.withOpacity(0.8),
            TagColors.information =>
              colorScheme.secondaryContainer.withOpacity(0.7),
            TagColors.attention => colorScheme.errorContainer.withOpacity(0.6),
            TagColors.hint => colorScheme.onInverseSurface.withOpacity(0.7),
          },
        ),
        child: Text(
          tag,
          style: TextStyle(
            color: colorScheme.onSecondaryContainer,
          ),
        ),
      ),
    );
  }
}
