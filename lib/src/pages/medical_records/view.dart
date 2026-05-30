import '../../../common.dart';

class MedicalRecordsPage extends StatelessWidget {
  const MedicalRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Medical Records',
      description: 'View and manage patient medical records.',
      mainButtonTitle: 'New Record',
      mainButtonOnTap: () {},
      customBody: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          SizedBox(
            width: 300,
            // 1. Wrap the content in a Material widget instead of using BoxDecoration
            child: Material(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Patients',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(),
                    // 2. You might want to remove the default SearchBar elevation here
                    SearchBar(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      elevation: WidgetStateProperty.all(0),
                    ),
                    const SizedBox(height: 12),
                    ListView.builder(
                      shrinkWrap: true,
                      // 3. Prevent inner scrolling to avoid scroll-conflicts with the parent
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          // 4. Add bottom padding so your bordered ListTiles don't overlap
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            title: Text('Patient ${index + 1}'),
                            subtitle: const Text('DOB: 01/01/1990'),
                            onTap: () {
                              // Tap effect will now render correctly over the Material!
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Text('Medical Record Details')),
            ),
          ),
        ],
      ),
    );
  }
}
