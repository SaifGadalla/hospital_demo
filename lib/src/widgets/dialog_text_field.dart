import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class DialogTextField extends StatelessWidget {
  const DialogTextField({
    super.key,
    this.formControl,
    this.formControlName,
    required this.label,
    this.width,
    this.height,
  });

  final String? formControlName;
  final FormControl<dynamic>? formControl;
  final double? width;
  final double? height;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 200,
      height: height,
      child: ReactiveTextField(
        formControl: formControl,
        formControlName: formControlName,
        decoration: InputDecoration(labelText: label),
      ),
    );
  }
}
