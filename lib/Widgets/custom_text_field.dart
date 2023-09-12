import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldd extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final bool? ab;
  final Widget? prefix;
  final Widget? suffix;
  final bool? numbertyppe;

  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  const CustomTextFieldd(
      {Key? key,
      required this.text,
      required this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.prefixIcon,
      required this.ab,
      this.prefix,
      this.suffix,
      required this.numbertyppe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white), //<-- SEE HERE

      obscureText: ab!,
      textAlign: TextAlign.left,
      keyboardType: numbertyppe! ? TextInputType.number : keyboardType,
      // keyboardType: numbertyppe! ? keyboardType : TextInputType.number,
      autofillHints: const [
        AutofillHints.username,
        AutofillHints.password,
        AutofillHints.email,
        AutofillHints.telephoneNumber
      ],
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        // fillColor:  Color(AppColors.fillColor),
        filled: true,

        prefixIcon: prefixIcon,
        prefix: Padding(
          padding: EdgeInsets.only(right: 5.w),
          child: prefix,
        ),
        suffix: suffix,
        hintText: text,
        hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
