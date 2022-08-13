import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.suffixIcon,
    this.validator,
    this.onEditingComplete,
    this.inputFormatters,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
    this.enabled = true,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final VoidCallback? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.p64,
      decoration: const BoxDecoration(
        color: AppColors.textFormFieldColor,
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.p6),
        ),
      ),
      child: Center(
        child: TextFormField(
          obscureText: obscureText!,
          controller: controller,
          textInputAction: textInputAction,
          keyboardType: TextInputType.name,
          autocorrect: false,
          validator: validator,
          inputFormatters: inputFormatters,
          onEditingComplete: onEditingComplete,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            enabled: enabled,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: Sizes.p12,
              vertical: Sizes.p6,
            ),
            border: InputBorder.none,
            labelText: labelText,
            labelStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.secondaryColor,
                ),
          ),
        ),
      ),
    );
  }
}
