import 'package:flutter/material.dart';

class DsShadow {
  static const elevation = BoxShadow(
    color: Color.fromRGBO(6, 23, 38, 0.16),
    blurRadius: 2,
    offset: Offset(0, 1),
  );
  static const elevation2 = BoxShadow(
    color: Color.fromRGBO(6, 23, 38, 0.14),
    blurRadius: 6,
    offset: Offset(0, 4),
  );
  static const elevation3 = BoxShadow(
    color: Color.fromRGBO(6, 23, 38, 0.14),
    blurRadius: 16,
    offset: Offset(0, 6),
  );
  static const elevation4 = BoxShadow(
    color: Color.fromRGBO(6, 23, 38, 0.12),
    blurRadius: 24,
    offset: Offset(0, 12),
  );
  static const elevation5 = BoxShadow(
    color: Color.fromRGBO(6, 23, 38, 0.12),
    blurRadius: 48,
    offset: Offset(0, 24),
  );
}
