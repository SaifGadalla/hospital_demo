import '../../common.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    this.onSearchFieldSubmit,
    this.onSearchFieldChanged,
    this.hintText,
    required this.formGroup,
    this.width,
  });

  final void Function(FormControl<String>)? onSearchFieldSubmit;
  final void Function(FormControl<String>)? onSearchFieldChanged;
  final String? hintText;
  final FormGroup formGroup;
  final double? width;

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return ReactiveForm(
      formGroup: formGroup,
      child: SizedBox(
        width: width,
        height: 44,
        child: ReactiveTextField<String>(
          formControlName: kSearchFCN,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: hintText ?? 'Search',
            hintStyle: textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          onSubmitted: onSearchFieldSubmit,
          onChanged: (control) async {
            await Future.delayed(const Duration(milliseconds: 500), () {
              onSearchFieldChanged?.call(control);
            });
          },
        ),
      ),
    );
  }
}
