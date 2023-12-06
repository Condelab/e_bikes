import 'package:e_bikes/data/enums/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButton extends StatelessWidget {
  final Widget? child;
  final String? buttonText;
  final ButtonType buttonType;
  final VoidCallback? onPressed;
  final Color? color;
  final String? image;
  final Color? textColor;
  final Color? borderColor;
  final double borderWidth;
  final double? verticalPadding;
  final TextStyle? textStyle;
  final double? radius;
  final double? fontSize;
  const AppButton(
      {Key? key,
      this.child,
      this.radius,
      this.color,
      this.image,
      this.textColor,
      this.buttonText,
      this.borderWidth = 1,
      this.borderColor,
      this.buttonType = ButtonType.primary,
      this.onPressed,
      this.fontSize,
      this.verticalPadding,
      this.textStyle})
      : assert(buttonText != null || child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: key ?? (buttonText == null ? UniqueKey() : ValueKey(buttonText!)),
      onPressed: () {
        if (onPressed != null) {
          FocusScope.of(context).unfocus();
          onPressed!();
        }
      },
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>((states) => 0),
        padding: MaterialStateProperty.resolveWith<EdgeInsets>(
          (states) => EdgeInsets.symmetric(vertical: verticalPadding ?? 12.h),
        ),
        fixedSize: MaterialStateProperty.resolveWith<Size>(
          (states) => Size(327.w, 56.h),
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (states) => RoundedRectangleBorder(
            side: BorderSide(
              color: onPressed == null
                  ? Colors.transparent
                  : borderColor ?? color ?? buttonType.borderColor,
              width: borderWidth,
            ),
            borderRadius: BorderRadius.circular(radius ?? 8.r),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled) || onPressed == null) {
              return buttonType.disabledColor;
            }
            return color ??
                buttonType.buttonColor; // Use the component's default.
          },
        ),
      ),
      child: child ??
          Container(
            padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                  child: SvgPicture.asset(
                    image ?? "",
                    width: 32.w,
                    height: 32.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 70.w),
                Center(
                  child: Text(
                    buttonText!,
                    style: textStyle ??
                        TextStyle(
                          fontSize: fontSize ?? 14.sp,
                          fontWeight: FontWeight.w500,
                          height: 1,
                          color: textColor ?? buttonType.textColor,
                        ),
                  ),
                )
              ],
            ),
          ),
    );
  }
}
