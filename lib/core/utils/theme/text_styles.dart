import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotionai/generated/gen/colors.gen.dart';

class TextStyles {
  const TextStyles._();

  static const TextStyle _archivoBaseTextStyle = TextStyle(
    fontFamily: 'Archivo',
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  static const TextStyle _poppinsBaseTextStyle = TextStyle(
    fontFamily: 'Poppins',
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  static final TextStyle archivoLight = _archivoBaseTextStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    color: ColorName.white,
  );

  static final TextStyle archivoRegular = _archivoBaseTextStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorName.white,
  );

  static final TextStyle archivoMedium = _archivoBaseTextStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: ColorName.white,
  );

  static final TextStyle archivoBold = _archivoBaseTextStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorName.white,
  );

  static const TextStyle _archivoSemiExpandedBaseTextStyle = TextStyle(
    fontFamily: 'Archivo-SemiExpanded',
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
    letterSpacing: 0,
    height: 0.9,
  );

  static final TextStyle archivoSemiExpandedRegular =
      _archivoSemiExpandedBaseTextStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorName.white,
    letterSpacing: 0,
    height: 1.2,
  );

  static final TextStyle archivoSemiExpandedBold =
      _archivoSemiExpandedBaseTextStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorName.white,
    letterSpacing: 0,
    height: 1,
  );

  static final TextStyle poppinsLight = _poppinsBaseTextStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    color: ColorName.white,
  );

  static final TextStyle poppinsRegular = _poppinsBaseTextStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorName.white,
  );

  static final TextStyle poppinsMedium = _poppinsBaseTextStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: ColorName.white,
  );

  static final TextStyle poppinsBold = _poppinsBaseTextStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w800,
    color: ColorName.white,
  );
}
