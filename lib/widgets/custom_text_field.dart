import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.controller,
      this.icon,
      this.label,
      this.hint,
      this.maxLines = 1,
      this.maxLength,
      this.onChanged});

  final TextEditingController? controller;
  final Widget? icon;
  final String? label;
  final String? hint;
  final int? maxLines;
  final int? maxLength;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 24, 0),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        maxLength: maxLength,
        decoration: InputDecoration(
          icon: icon,
          labelText: label,
          hintText: hint,
          border: InputBorder.none,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
