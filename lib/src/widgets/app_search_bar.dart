import 'dart:async';
import '../../common.dart';

class AppSearchBar extends StatefulWidget {
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
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return ReactiveForm(
      formGroup: widget.formGroup,
      child: SizedBox(
        width: widget.width,
        height: 44,
        child: ReactiveTextField<String>(
          formControlName: kSearchFCN,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: widget.hintText ?? 'Search',
            hintStyle: textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          onSubmitted: widget.onSearchFieldSubmit,
          onChanged: (control) {
            if (_debounce?.isActive ?? false) _debounce?.cancel();
            _debounce = Timer(const Duration(milliseconds: 500), () {
              widget.onSearchFieldChanged?.call(control);
            });
          },
        ),
      ),
    );
  }
}
