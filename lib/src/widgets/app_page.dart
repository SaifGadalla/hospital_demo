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
    this.hasSearch = false,
    this.table,
    this.tableHeader,
    this.customBody,
  });

  final String title;
  final String description;
  final String mainButtonTitle;
  final VoidCallback mainButtonOnTap;
  final List<Widget>? secondarybuttons;
  final List<NumberCard>? numberCards;
  final List<Widget>? secondarySearchHeaderWidgets;
  final bool hasSearch;
  final DataTable? table;
  final String? tableHeader;
  final Widget? customBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(description),
                    ],
                  ),
                  Row(
                    mainAxisSize: .min,
                    spacing: 20,
                    children: [
                      if (secondarybuttons != null) ...secondarybuttons!,
                      TextButton(
                        onPressed: mainButtonOnTap,
                        child: Text(mainButtonTitle),
                      ),
                    ],
                  ),
                ],
              ),
              if (numberCards != null)
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    // mainAxisAlignment: .spaceBetween,
                    spacing: 20,
                    runSpacing: 20,
                    children: [...numberCards!],
                  ),
                ),
              if (hasSearch)
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      spacing: 16,
                      children: [
                        SearchBar(
                          leading: Icon(Icons.search),
                          hintText: 'Search patients',
                        ),
                        if (secondarySearchHeaderWidgets != null)
                          ...secondarySearchHeaderWidgets!,
                      ],
                    ),
                  ),
                ),
              ?customBody,
              if (table != null)
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (tableHeader != null) ...[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            tableHeader!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(height: 1),
                      ],
                      table!,
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
