import 'package:responsive_builder/responsive_builder.dart';
import '../../common.dart';

class AppPage extends StatelessWidget {
  const AppPage({
    super.key,
    required this.title,
    required this.description,
    required this.mainButtonTitle,
    required this.mainButtonOnTap,
    this.secondarybuttons,
    this.numberCards,
    this.secondarySearchHeaderWidgets,
    this.trailingWidget,
    this.hasSearch = false,
    this.table,
    this.tableHeader,
    this.customBody,
    this.searchFormGroup,
    this.onSearchFieldChanged,
  });

  final String title;
  final String description;
  final String mainButtonTitle;
  final VoidCallback mainButtonOnTap;
  final List<Widget>? secondarybuttons;
  final List<NumberCard>? numberCards;
  final List<Widget>? secondarySearchHeaderWidgets;
  final Widget? trailingWidget;
  final bool hasSearch;
  final Widget? table;
  final String? tableHeader;
  final Widget? customBody;
  final FormGroup? searchFormGroup;
  final Function(FormControl<String>)? onSearchFieldChanged;

  @override
  Widget build(BuildContext context) {
    // Dynamic padding based on screen size
    final double horizontalPadding = getValueForScreenType<double>(
      context: context,
      mobile: 16.0,
      tablet: 24.0,
      desktop: 30.0,
    );

    return Scaffold(
      backgroundColor: ColorManager.background,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(horizontalPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24,
          children: [
            _buildHeader(context),
            if (numberCards != null) _buildNumberCards(context),
            if (hasSearch && searchFormGroup != null) _buildSearchHeader(context),
            if (customBody != null) customBody!,
            if (table != null) _buildTableContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleAndDescription(),
          const SizedBox(height: 16),
          _buildActionButtons(),
        ],
      ),
      tablet: (BuildContext context) => _buildDesktopHeader(),
      desktop: (BuildContext context) => _buildDesktopHeader(),
    );
  }

  Widget _buildDesktopHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: _buildTitleAndDescription()),
        const SizedBox(width: 16),
        _buildActionButtons(),
      ],
    );
  }

  Widget _buildTitleAndDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyleManager.h2.copyWith(color: ColorManager.textPrimary),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: TextStyleManager.bodyMedium.copyWith(color: ColorManager.textSecondary),
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      alignment: WrapAlignment.start,
      children: [
        if (secondarybuttons != null) ...secondarybuttons!,
        ElevatedButton(
          onPressed: mainButtonOnTap,
          child: Text(mainButtonTitle),
        ),
      ],
    );
  }

  Widget _buildNumberCards(BuildContext context) {
    final double spacing = getValueForScreenType<double>(
      context: context,
      mobile: 12.0,
      tablet: 16.0,
      desktop: 20.0,
    );
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: [...numberCards!],
      ),
    );
  }

  Widget _buildSearchHeader(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorManager.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: ScreenTypeLayout.builder(
        mobile: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppSearchBar(
              formGroup: searchFormGroup!,
              width: double.infinity,
              hintText: 'Search patients',
              onSearchFieldChanged: onSearchFieldChanged,
            ),
            if (secondarySearchHeaderWidgets != null) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: secondarySearchHeaderWidgets!,
              ),
            ],
            if (trailingWidget != null) ...[
              const SizedBox(height: 12),
              trailingWidget!,
            ],
          ],
        ),
        tablet: (context) => _buildDesktopSearchRow(),
        desktop: (context) => _buildDesktopSearchRow(),
      ),
    );
  }

  Widget _buildDesktopSearchRow() {
    return Row(
      children: [
        AppSearchBar(
          formGroup: searchFormGroup!,
          width: 300,
          hintText: 'Search patients',
          onSearchFieldChanged: onSearchFieldChanged,
        ),
        const SizedBox(width: 16),
        if (secondarySearchHeaderWidgets != null)
          ...secondarySearchHeaderWidgets!.map((w) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child: w,
              )),
        const Spacer(),
        trailingWidget ?? const SizedBox(),
      ],
    );
  }

  Widget _buildTableContainer() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorManager.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (tableHeader != null) ...[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                tableHeader!,
                style: TextStyleManager.h4,
              ),
            ),
            const Divider(height: 1),
          ],
          table!,
        ],
      ),
    );
  }
}
