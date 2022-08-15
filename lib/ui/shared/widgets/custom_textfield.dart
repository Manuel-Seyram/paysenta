import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../textstyles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required String textFieldLabel,
    required TextEditingController emailTextController,
    required final bool isReadOnly,
    final Widget? widget,
    final TextInputType? keyboardType,
    String? hintText,
    final Widget? prefixWidget,
    final String? subLabel,
    TextStyle? textStyle,
    TextStyle? hintStyle,
    final double? boxHeight,
    final bool? isMultiline,
    final Color? labelTextColor,
    final TextStyle? labelTextStyle,
    final Color? subLabelTextColor,
    final TextStyle? subLabelTextStyle,
    final bool? obscureText,
  })  : _textFieldLabel = textFieldLabel,
        _emailTextController = emailTextController,
        _isReadOnly = isReadOnly,
        _widget = widget,
        _keyboardType = keyboardType,
        _hintText = hintText,
        _prefixWidget = prefixWidget,
        _subLabel = subLabel,
        _textStyle = textStyle,
        _hintStyle = hintStyle,
        _boxHeight = boxHeight,
        _isMultiline = isMultiline,
        _labelTextColor = labelTextColor,
        _labelTextStyle = labelTextStyle,
        _obscureText = obscureText,
        super(key: key);
  final bool? _obscureText;
  final TextEditingController _emailTextController;
  final String? _subLabel;
  final String _textFieldLabel;
  final bool _isReadOnly;
  final Widget? _widget;
  final TextInputType? _keyboardType;
  final Widget? _prefixWidget;
  final String? _hintText;
  final TextStyle? _textStyle;
  final TextStyle? _hintStyle;
  final double? _boxHeight;
  final bool? _isMultiline;
  final Color? _labelTextColor;
  final TextStyle? _labelTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: _boxHeight ?? 45,
          child: TextFormField(
            style: _textStyle,
            maxLines: 1,
            minLines: null,
            readOnly: _isReadOnly,
            controller: _emailTextController,
            expands: _isMultiline ?? false,
            obscureText: _obscureText ?? false,
            keyboardType: _keyboardType ?? TextInputType.text,
            onFieldSubmitted: (onSubmitted) {
              if (onSubmitted.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              suffixIcon: _widget,
              prefixIcon: _prefixWidget,
              labelText: _textFieldLabel,
              floatingLabelStyle: GoogleFonts.nunito(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                    const BorderSide(color: Color(0xFFCACACA), width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                    const BorderSide(color: Color(0xFFCACACA), width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: primaryColor, width: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
