import 'package:flutter/material.dart';

enum ButtonType {
  primary,
}

extension ButtonTypeExt on ButtonType {
  Color get buttonColor {
    switch (this) {
      case ButtonType.primary:
        return Colors.black;
    }
  }

  Color get disabledColor {
    switch (this) {
      case ButtonType.primary:
        return Colors.grey;
    }
  }

  Color get borderColor {
    switch (this) {
      case ButtonType.primary:
        return Colors.black;
    }
  }

  Color get textColor {
    switch (this) {
      case ButtonType.primary:
        return Colors.white;
    }
  }
}
