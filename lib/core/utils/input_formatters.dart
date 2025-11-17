import 'package:flutter/services.dart';

/// Formats phone numbers in Pakistani format: 0300-1755999
class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Remove all non-digit characters
    String digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');

    // Limit to 11 digits (Pakistani phone number)
    if (digitsOnly.length > 11) {
      digitsOnly = digitsOnly.substring(0, 11);
    }

    String formatted = '';

    if (digitsOnly.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // Format as: 0300-1755999
    if (digitsOnly.length <= 4) {
      formatted = digitsOnly;
    } else {
      formatted = '${digitsOnly.substring(0, 4)}-${digitsOnly.substring(4)}';
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

// Alternative: More flexible formatter that allows editing
class PhoneNumberFormatterV2 extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;

    // Remove all non-digit characters
    String digitsOnly = text.replaceAll(RegExp(r'\D'), '');

    // Limit to 11 digits
    if (digitsOnly.length > 11) {
      digitsOnly = digitsOnly.substring(0, 11);
    }

    if (digitsOnly.isEmpty) {
      return TextEditingValue.empty;
    }

    String formatted = '';
    int cursorPosition = newValue.selection.end;

    // Format as: 0300-1755999
    if (digitsOnly.length <= 4) {
      formatted = digitsOnly;
    } else {
      formatted = '${digitsOnly.substring(0, 4)}-${digitsOnly.substring(4)}';
    }

    // Adjust cursor position
    if (cursorPosition > formatted.length) {
      cursorPosition = formatted.length;
    }

    // If user was typing and hit the dash position, move cursor forward
    if (oldValue.text.length < newValue.text.length &&
        cursorPosition == 5 &&
        formatted.length > 4) {
      cursorPosition = 5;
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: cursorPosition),
    );
  }
}
