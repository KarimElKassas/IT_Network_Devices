import 'package:flutter/material.dart';

import '../resources/app_constants.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/values_manager.dart';

class DefaultTextFieldComponent extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  TextInputType textInputType;
  TextInputAction textInputAction;
  bool? isPassword;
  Function(String? value)? validate;
  TextStyle? textStyle;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;


  DefaultTextFieldComponent({
      this.controller,
      this.textInputType = TextInputType.text,
      this.textInputAction = TextInputAction.next,
      this.isPassword,
      this.validate,
      this.textStyle,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: AppSize.s3,
      color: ColorManager.white,
      child: TextFormField(
        controller: controller,
        textDirection: AppConstants.isArabic() ? TextDirection.rtl : TextDirection.ltr,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        obscureText: isPassword??false,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        validator: (value) => validate!(value),
        decoration: InputDecoration(
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: AppSize.s0_2,
                  style: BorderStyle.solid,
                  color: Theme.of(context).primaryColorDark
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: AppSize.s0_2,
                style: BorderStyle.solid,
                color: ColorManager.error,
              ),

            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: AppSize.s0_2,
                  style: BorderStyle.solid,
                  color: ColorManager.error
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: AppSize.s0_2,
                  style: BorderStyle.solid,
                  color: Theme.of(context).primaryColorDark
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: AppSize.s0_2,
                  style: BorderStyle.solid,
                  color: Theme.of(context).primaryColorDark
              ),
            ),
            floatingLabelStyle: TextStyle(color: Theme.of(context).primaryColorDark),
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: AppSize.s14,
                color: Theme.of(context).primaryColorDark.withOpacity(AppSize.s0_8),
                fontFamily: FontConstants.family,
                fontWeight: FontWeightManager.bold),
            fillColor: ColorManager.white,
            //alignLabelWithHint: true,
            errorStyle: TextStyle(
                fontSize: AppSize.s12,
                color: ColorManager.error,
                fontFamily: FontConstants.family,
                fontWeight: FontWeightManager.bold),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintTextDirection: AppConstants.isArabic() ? TextDirection.rtl : TextDirection.ltr,
            border: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: AppSize.s0_2,
                  style: BorderStyle.none,
                ),
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s16))),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            errorMaxLines: 2
        ),

        style: textStyle ??
            TextStyle(
                fontSize: AppSize.s16,
                color: Theme.of(context).primaryColorDark.withOpacity(AppSize.s0_8),
                fontFamily: FontConstants.family,
                fontWeight: FontWeightManager.bold),
      ),
    );
  }
}

/*static Widget registerTextField({
    required BuildContext context,
    required TextInputType textInputType,
    required String hintText,
    required TextInputAction textInputAction,
    required Function(String? value) validate,
    TextStyle? textStyle,
    Widget? suffixIcon,
    Widget? prefixIcon,
    bool? isPassword,
    TextEditingController? controller
  }) {
    return Material(
      elevation: AppSize.s3,
      color: ColorManager.white,
      child: TextFormField(
        controller: controller,
        textDirection: AppConstants.isArabic() ? TextDirection.rtl : TextDirection.ltr,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        obscureText: isPassword??false,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        validator: (value) => validate(value),
        decoration: InputDecoration(
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: AppSize.s0_2,
                style: BorderStyle.solid,
                color: Theme.of(context).primaryColorDark
            ),
          ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: AppSize.s0_2,
                  style: BorderStyle.solid,
                  color: ColorManager.error,
              ),

            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: AppSize.s0_2,
                  style: BorderStyle.solid,
                  color: ColorManager.error
              ),
            ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: AppSize.s0_2,
              style: BorderStyle.solid,
              color: Theme.of(context).primaryColorDark
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: AppSize.s0_2,
                style: BorderStyle.solid,
                color: Theme.of(context).primaryColorDark
            ),
          ),
          floatingLabelStyle: TextStyle(color: Theme.of(context).primaryColorDark),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: AppSize.s14,
              color: Theme.of(context).primaryColorDark.withOpacity(AppSize.s0_8),
              fontFamily: FontConstants.family,
              fontWeight: FontWeightManager.bold),
          fillColor: ColorManager.white,
          //alignLabelWithHint: true,
          errorStyle: TextStyle(
              fontSize: AppSize.s12,
              color: ColorManager.error,
              fontFamily: FontConstants.family,
              fontWeight: FontWeightManager.bold),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintTextDirection: AppConstants.isArabic() ? TextDirection.rtl : TextDirection.ltr,
          border: const OutlineInputBorder(
              borderSide: BorderSide(
                width: AppSize.s0_2,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s16))),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          errorMaxLines: 2
        ),

        style: textStyle ??
            TextStyle(
                fontSize: AppSize.s16,
                color: Theme.of(context).primaryColorDark.withOpacity(AppSize.s0_8),
                fontFamily: FontConstants.family,
                fontWeight: FontWeightManager.bold),
      ),
    );
  }*/
