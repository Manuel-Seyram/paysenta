import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({
    Key? key,
    required final TextEditingController controller,
    required final bool autoFocus,
  })  : _controller = controller,
        _autoFocus = autoFocus,
        super(key: key);
  final TextEditingController _controller;
  final bool _autoFocus;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: 59,
      child: TextField(
        autofocus: _autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: _controller,
        obscureText: true,
        maxLength: 1,
        style: GoogleFonts.manrope(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.00,
            height: 22 / 14,
            color: Color(0xFF18273A),
          ),
        ),
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB), width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0xFF1676F3), width: 1),
            ),
            counterText: '',
            hintStyle: const TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
