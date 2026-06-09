import '../../common.dart';

class AppDropDownButton extends StatelessWidget {
  final List<DropdownMenuItem<String>> items;
  final String? hint;
  final String? value;
  final String? formControlName;
  final FormControl<String>? formControl;
  final void Function(FormControl<String?>)? onChanged;
  final double width;

  const AppDropDownButton({
    super.key,
    required this.items,
    this.hint,
    this.value,
    this.formControlName,
    this.formControl,
    this.onChanged,
    this.width = 200,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ReactiveDropdownField<String?>(
        formControl: formControl,
        formControlName: formControlName,
        items: items,
        onChanged: onChanged,
        hint: hint != null ? Text(hint!) : null,
      ),
    );
  }
}
