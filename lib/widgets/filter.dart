import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  final String title;
  final bool isActive;
  final String type;
  final Function() onPressed;

  const Filter({
    Key? key,
    required this.title,
    this.isActive = false,
    required this.type,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: isActive ? _buttonStyleActive() : _buttonStyleNoActive(),
      onPressed: onPressed,
      child: Text(title),
    );
  }

  ButtonStyle _buttonStyleActive() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        const Color(0xff202024),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        type == 'open' ? const Color(0xffFBA94C) : const Color(0xff04D361),
      ),
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: type == 'open'
              ? const Color(0xffFBA94C)
              : const Color(0xff04D361),
        ),
      ),
    );
  }

  ButtonStyle _buttonStyleNoActive() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        const Color(0xff202024),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        const Color(0xff7C7C8A),
      ),
    );
  }
}
