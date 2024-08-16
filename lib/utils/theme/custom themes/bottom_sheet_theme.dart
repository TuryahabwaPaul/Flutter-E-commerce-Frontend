import 'package:flutter/material.dart';

class TbottomSheetTheme {
  TbottomSheetTheme._();
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
  );
}
