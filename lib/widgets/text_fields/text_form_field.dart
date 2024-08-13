import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todolist/core/colors.dart';

import 'form.dart';

class AppTextFormField extends StatelessWidget {
  final bool? enabled;
  final String? initialValue;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final bool obscureText;
  final TextEditingController? controller;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Key? fieldKey;
  final int? maxLines;
  final int? minLines;
  final bool autofocus;
  final Color? fillColor;
  final GestureTapCallback? onTap;

  const AppTextFormField({
    this.enabled,
    this.initialValue,
    this.hintText,
    this.helperText,
    this.errorText,
    this.obscureText = false,
    this.controller,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.textInputAction,
    this.autofillHints,
    this.inputFormatters,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.onTap,
    this.prefixIcon,
    this.suffixIcon,
    this.fieldKey,
    this.maxLines = 1,
    this.minLines,
    this.fillColor = const Color(0xff1D242B),
    this.autofocus = false,
  });

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      key: fieldKey,
      enabled: enabled ?? !(AppForm.of(context)?.disable ?? false),
      initialValue: initialValue,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        helperText: helperText,
        errorText: errorText,
        fillColor: LightCodeColors.gray90001,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none),
        prefixIcon: prefixIcon == null
            ? null
            : Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Theme.of(context)
                          .inputDecorationTheme
                          .contentPadding!
                          .horizontal /
                      2,
                ),
                child: prefixIcon,
              ),
        suffixIcon: suffixIcon == null
            ? null
            : Padding(
                padding: EdgeInsetsDirectional.only(
                  end: Theme.of(context)
                          .inputDecorationTheme
                          .contentPadding!
                          .horizontal /
                      2,
                ),
                child: suffixIcon,
              ),
        prefixIconConstraints: const BoxConstraints(),
        suffixIconConstraints: const BoxConstraints(),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      autofillHints: autofillHints,
      controller: controller,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
    );
  }
}
