import 'package:flutter/material.dart';

class CommonCheckButton extends StatelessWidget {
  final bool isChecked;

  const CommonCheckButton(this.isChecked, {super.key});

  @override
  Widget build(BuildContext context) {
    return isChecked
        ? const Icon(Icons.check_circle)
        : const Icon(Icons.radio_button_unchecked);
  }
}
