import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber100,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.08),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.2),
      );

  // Outline decorations
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.4),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.4),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA7001 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.1),
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.8),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL8 => BorderRadius.only(
        topLeft: Radius.circular(8.h),
        topRight: Radius.circular(8.h),
        bottomLeft: Radius.circular(8.h),
      );
  static BorderRadius get customBorderTL81 => BorderRadius.only(
        topLeft: Radius.circular(8.h),
        topRight: Radius.circular(8.h),
        bottomRight: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
