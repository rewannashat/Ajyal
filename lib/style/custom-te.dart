
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';


class CustomTextFormField extends StatelessWidget {
  final String? hintTxt;
  final String? label;
  final String? initValue;
  final Widget? prefexIcon;
  final Widget? suffixIcon;
  final Function? onPressedPrefexIcon;
  final VoidCallback? onPressedSuffixIcon;
  final Function? onChange;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Color? fillColor;
  final bool? obscureText;
  final bool? enable;
  final int? minLines;
  final int? maxLines;
  final double? horizontalPadding;
  final double? verticalPadding;
  final List<TextInputFormatter>? inputFormatters;
  final Function? validator;
  final Color? txtColor ;
  final Color? hintColor ;


  const CustomTextFormField({
  this.hintTxt,
  this.label = "",
  this.onPressedPrefexIcon,
  this.keyboardType,
  this.controller,
  this.onChange,
  this.obscureText = false,
  this.maxLines = 1,
  this.minLines = 1,
  this.prefexIcon,
  this.fillColor = Colors.white,
  this.horizontalPadding,
  this.verticalPadding,
  this.enable = true,
  this.onPressedSuffixIcon,
  this.suffixIcon,
  this.initValue = "",
  this.inputFormatters,
  this.validator ,
  this.txtColor,
  this.hintColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    //  inputFormatters: inputFormatters,
      style: TextStyle(
        color: Theme.of(context).textTheme.labelLarge!.color,
      ),
      controller: controller,
      validator: (val) => validator!(val) ,
        //value == null || value.isEmpty,
        enabled: enable,
      minLines: minLines,
      maxLines: maxLines,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        focusColor: Colors.white,
        hintText: hintTxt,
        label: CustomText(
          txt: label,
          fontSize: 14.sp,
          color: txtColor,
          fontfamily: "InterR",
          overflow: TextOverflow.ellipsis,
        ),
        fillColor: Theme.of(context).colorScheme.surface,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        hintStyle: TextStyle(
          fontFamily: "Inter",
          color: Colors.grey,
          fontSize: 9.sp,
          overflow: TextOverflow.ellipsis,
        ),
        prefixIcon: prefexIcon,
        suffixIcon: suffixIcon,
      ),
      keyboardType: keyboardType,
      obscureText: obscureText!,
      cursorColor: Colors.black,
      autofocus: true,
    );
  }
}