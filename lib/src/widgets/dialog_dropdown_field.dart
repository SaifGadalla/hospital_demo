import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class DialogDropdownField<T> extends StatelessWidget {
  const DialogDropdownField({
    super.key,
    this.formControl,
    this.formControlName,
    required this.label,
    required this.items,
    this.width,
    this.onChanged,
  });

  final String? formControlName;
  final FormControl<T>? formControl;
  final double? width;
  final String label;
  final List<DropdownMenuItem<T>> items;
  final void Function(FormControl<T>)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 200,
      child: ReactiveDropdownField<T>(
        formControl: formControl,
        formControlName: formControlName,
        items: items,
        decoration: InputDecoration(labelText: label),
        onChanged: onChanged,
      ),
    );
  }
}
