import 'package:flutter/material.dart';

class CodeTextField extends StatelessWidget {

  final TextEditingController codeEditingController;
  final FocusNode focusNode;
  final void Function(String value) onChanded;

  CodeTextField({
    required this.codeEditingController,
    required this.focusNode,
    required this.onChanded,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: codeEditingController,
      focusNode: focusNode,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      onChanged: onChanded,
      maxLines: 1,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
        counterText: '',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 4,
            color: Color(0xff21A28B),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 4,
            color: Color(0xff21A28B),
          ),
        ),
      ),
    );
  }
}
