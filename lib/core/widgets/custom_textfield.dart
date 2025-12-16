import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import '../../core/core.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hintText;
  final String? label;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final int maxLines;
  final Color fillColor;
  final Color borderColor;
  final Color labelColor;
  final bool isrequired;
  final int labelfontSize;
  final bool readonly;
  final double? textfieldHeight;
  final List<TextInputFormatter>? inputFormatters; // Added this
  final TextStyle? hintStyle;
  final double borderRadius;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.label,
    this.readonly = false,
    this.prefixIcon,
    this.isrequired = false,
    this.fillColor = AppColors.appLightThemeBackground,
    this.borderColor = Colors.transparent,
    this.controller,
    this.labelColor = AppColors.greyTextColor,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.labelfontSize = 16,
    this.onChanged,
    this.textfieldHeight = 50,
    this.onTap,
    this.maxLines = 1,
    this.inputFormatters, // Added this
    this.hintStyle,
    this.borderRadius = 10,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.label!,
                  style: context.bodySmallStyle!.copyWith(
                    color: widget.labelColor,
                    fontSize: widget.labelfontSize.toDouble(),
                  ),
                ),
                widget.isrequired
                    ? TextSpan(
                        text: "*",
                        style: context.bodyMediumStyle!.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: widget.labelfontSize.toDouble(),
                        ),
                      )
                    : const TextSpan(),
              ],
            ),
          ),
        // heightBox(5),
        SizedBox(
          height: widget.textfieldHeight,
          child: TextFormField(
            autofocus: false,
            textCapitalization: TextCapitalization.words,
            readOnly: widget.readonly,
            style: context.bodySmallStyle,
            controller: widget.controller,
            obscureText: isObscure,
            keyboardType: widget.keyboardType,
            maxLines: widget.obscureText ? 1 : widget.maxLines,
            inputFormatters: widget.inputFormatters, // Added this
            decoration: InputDecoration(
              hintStyle:
                  widget.hintStyle ??
                  context.bodySmallStyle!.copyWith(
                    color: AppColors.greyTextColor,
                  ),
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon != null
                  ? Icon(
                      widget.prefixIcon,
                      color: AppColors.greyColor,
                      size: 20,
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
              fillColor: widget.fillColor,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: AppColors.greyColor, width: 2),
              ),
              contentPadding: const EdgeInsets.only(left: 10),
              suffixIcon: widget.obscureText
                  ? IconButton(
                      icon: Icon(
                        isObscure ? Iconsax.eye_slash : Iconsax.eye,
                        color: AppColors.greyColor,
                        size: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                    )
                  : null,
            ),
            validator: widget.validator,
            onChanged: widget.onChanged,
            onTap: widget.onTap,
          ),
        ),
      ],
    );
  }
}
