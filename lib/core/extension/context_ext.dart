import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Context extension
extension ContextExt on BuildContext {
  /// Pacifico text style
  TextStyle pacifico({TextStyle? textStyle}) => GoogleFonts.pacifico(
        textStyle: textStyle,
      );

  /// Open sans text style
  TextStyle openSans({TextStyle? textStyle}) => GoogleFonts.roboto(
        textStyle: textStyle,
      );

  /// Font weight w500
  FontWeight get fontWeightw500 => FontWeight.w500;
}
