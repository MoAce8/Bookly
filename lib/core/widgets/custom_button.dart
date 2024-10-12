import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.style,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.borderRadius,
    this.onPressed,
  });

  final String title;
  final TextStyle? style;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: style ??
              Styles.text18.copyWith(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
        ),
      ),
    );
  }
}
