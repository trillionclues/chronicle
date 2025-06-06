import 'package:chronicle/core/theme/app_colors.dart';
import 'package:chronicle/core/utils/chronicle_spacing.dart';
import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String? hintText;
  final Widget? actionIcon;
  final BorderRadius? borderRadius;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final String? fieldType;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const DefaultTextField({
    super.key,
    this.hintText,
    this.actionIcon,
    this.borderRadius,
    this.maxLines,
    this.minLines,
    this.fieldType = 'formField',
    this.onSubmitted,
    this.maxLength,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return fieldType == "formField" ? TextFormField(
      style: Theme.of(context).textTheme.bodyMedium,
      onChanged: onChanged,
      controller: controller,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      decoration: InputDecoration(
          fillColor: AppColors.surface,
          filled: true,
          counterStyle: Theme.of(context).textTheme.bodySmall,
          hintText: hintText,
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: ChronicleSpacing.md + 4),
            child: actionIcon,
          ),
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.textColor.withOpacity(0.5)),
          contentPadding: EdgeInsets.symmetric(horizontal: ChronicleSpacing.xl - 2, vertical: ChronicleSpacing.md),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: borderRadius ?? BorderRadius.circular(40))),
    ) : TextField(
      style: Theme.of(context).textTheme.bodyMedium,
      onChanged: onChanged,
      controller: controller,
      maxLines: 1,
      minLines: minLines,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
          fillColor: AppColors.surface,
          filled: true,
          counterStyle: Theme.of(context).textTheme.bodySmall,
          hintText: hintText,
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: ChronicleSpacing.md + 4),
            child: actionIcon,
          ),
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.textColor.withOpacity(0.5)),
          contentPadding: EdgeInsets.symmetric(horizontal: ChronicleSpacing.xl - 2, vertical: ChronicleSpacing.md),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: borderRadius ?? BorderRadius.circular(40))),
    );
  }
}
