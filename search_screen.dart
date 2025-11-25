import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  String searchType = 'vin';
  List<Map<String, String>> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('البحث عن مركبة'),
        backgroundColor: Colors.blue[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text('رقم الهيكل'),
                    leading: Radio(
                      value: 'vin',
                      groupValue: searchType,
                      onChanged: (value) {
                        setState(() {
                          searchType = value.toString();
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text('رقم اللوحة'),
                    leading: Radio(
                      value: 'plate',
                      groupValue: searchType,
                      onChanged: (value) {
                        setState(() {
                          searchType = value.toString();
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: searchType == 'vin' ? 'أدخل رقم الهيكل' : 'أدخل رقم اللوحة',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    searchController.clear();
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _performSearch,
                child: Text('بحث'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }

  void _performSearch() {
    setState(() {
      searchResults = [
        {
          'type': 'تويوتا',
          'color': 'أبيض',
          'year': '2020',
          'status': 'موجودة في الخرطوم',
          'contact': '0912345678',
        }
      ];
    });
  }

  Widget _buildSearchResults() {
    if (searchResults.isEmpty) {
      return Center(
        child: Text(
          'ادخل معايير البحث ثم اضغط على زر البحث',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        var result = searchResults[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: ListTile(
            leading: Icon(Icons.car_repair, color: Colors.green),
            title: Text('${result['type']} - ${result['color']} (${result['year']})'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('الحالة: ${result['status']}'),
                Text('الاتصال: ${result['contact']}'),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.phone, color: Colors.green),
              onPressed: () {
                // اتخاذ إجراء للاتصال
              },
            ),
          ),
        );
      },
    );
  }
}