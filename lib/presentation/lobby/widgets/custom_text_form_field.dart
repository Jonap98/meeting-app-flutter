import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? type;

  const CustomTextFormField({
    super.key,
    this.label,
    this.hint,
    this.errorMessage,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.type = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: colors.primary)
    );

    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      keyboardType: type,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith( borderSide: BorderSide( color: colors.primary ) ),
        errorBorder: border.copyWith( borderSide: BorderSide( color: Colors.red.shade800 ) ),
        focusedErrorBorder: border.copyWith( borderSide: BorderSide( color: Colors.red.shade800 ) ),
        isDense: true,
        label: label != null ? Text(label!) : null,
        hintText: hint,
        focusColor: colors.primary,
        // prefixIcon: Icon( Icons.supervised_user_circle_rounded ),
        // suffixIcon: Icon( Icons.supervised_user_circle_rounded ),
        // icon: Icon( Icons.supervised_user_circle_rounded ),
        errorText: errorMessage,
      ),
    );
  }
}