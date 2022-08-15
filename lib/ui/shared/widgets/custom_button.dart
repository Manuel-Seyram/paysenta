import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required Color color,
    required double width,
    required double height,
    required VoidCallback onPressed,
    required double radius,
    required Widget label,
    this.borderSideColor,
  })  : _label = label,
        _color = color,
        _height = height,
        _width = width,
        _onPressed = onPressed,
        _radius = radius,
        super(key: key);
  final Color _color;
  final Widget _label;
  final double _height;
  final double _width;
  final double _radius;
  final VoidCallback _onPressed;
  final Color? borderSideColor;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget._height,
      width: widget._width,
      child: Material(
        type: MaterialType.canvas,
        color: widget._color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget._radius),
          side: widget.borderSideColor != null
              ? BorderSide(color: widget.borderSideColor!)
              : BorderSide.none,
        ),
        child: MaterialButton(
          onPressed: widget._onPressed,
          child: widget._label,
        ),
      ),
    );
  }
}
