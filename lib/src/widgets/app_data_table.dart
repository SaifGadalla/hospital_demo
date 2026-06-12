import '../../common.dart';

class AppColumn {
  final String label;
  final int flex;
  final double? width;

  const AppColumn({required this.label, this.flex = 1, this.width});
}

class AppDataTable extends StatelessWidget {
  final List<AppColumn> columns;
  final List<DataRow> rows;
  final Color? headingRowColor;

  const AppDataTable({
    super.key,
    required this.columns,
    required this.rows,
    this.headingRowColor,
  });

  /// Build the TableColumnWidth for the header Table to match body Row sizing.
  Map<int, TableColumnWidth> _buildColumnWidths() {
    return {
      for (var i = 0; i < columns.length; i++)
        i: columns[i].width != null
            ? FixedColumnWidth(columns[i].width!)
            : FlexColumnWidth(columns[i].flex.toDouble()),
    };
  }

  /// Build a cell widget for a body row, matching the header column sizing.
  Widget _buildBodyCell(int index, Widget child) {
    final col = columns[index];
    final cellContent = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Align(alignment: Alignment.centerLeft, child: child),
    );

    // Fixed width → SizedBox, no Expanded
    if (col.width != null) {
      return SizedBox(width: col.width, child: cellContent);
    }
    // Flex width → Expanded
    return Expanded(flex: col.flex, child: cellContent);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Table Header
        Table(
          columnWidths: _buildColumnWidths(),
          children: [
            TableRow(
              decoration: BoxDecoration(
                color: headingRowColor ?? context.colors.surfaceElevated,
                border: Border(bottom: BorderSide(color: context.colors.border)),
              ),
              children: columns
                  .map(
                    (col) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(col.label, style: TextStyleManager.label),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
        // Scrollable Table Body
        Expanded(
          child: ListView.builder(
            itemCount: rows.length,
            itemBuilder: (context, index) {
              final row = rows[index];
              return Container(
                decoration: BoxDecoration(
                  color: context.colors.surface,
                  border: Border(
                    bottom: BorderSide(color: context.colors.divider),
                  ),
                ),
                child: Row(
                  children: List.generate(
                    row.cells.length,
                    (i) => _buildBodyCell(i, row.cells[i].child),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
