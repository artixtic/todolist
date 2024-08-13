import 'package:flutter/material.dart';

import 'text_form_field.dart';

class NameTextFormField extends StatelessWidget {
  final bool? enabled;
  final String? initialValue;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final TextInputType keyboardType;
  final Widget? prefix;
  final bool? autoFocus;
  final GestureTapCallback? onTap;

  const NameTextFormField({
    this.enabled,
    this.initialValue,
    this.hintText,
    this.helperText,
    this.errorText,
    this.controller,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.autoFocus = false,
    this.textInputAction,
    this.prefix,
    this.onTap,
    this.keyboardType = TextInputType.name,
  });

  @override
  Widget build(final BuildContext context) {
    return AppTextFormField(
      enabled: enabled,
      initialValue: initialValue,
      hintText: hintText,
      helperText: helperText,
      errorText: errorText,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      prefixIcon: prefix,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      autofocus: autoFocus!,
      onTap: onTap,
      textCapitalization: TextCapitalization.words,
      autofillHints: const [
        AutofillHints.name,
      ],
    );
  }
}
