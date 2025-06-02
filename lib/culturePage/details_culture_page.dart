import 'package:flutter/material.dart';

class CultureDetailPage extends StatelessWidget {
  final Map<String, dynamic> culture;

  const CultureDetailPage({Key? key, required this.culture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2F2D5),
      appBar: AppBar(
        title: Text(culture['title'] ?? 'รายละเอียด'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              culture['title'] ?? 'ไม่มีชื่อเรื่อง',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          culture['description_try'] ??
                              'ไม่มีรายละเอียดเพิ่มเติม',
                          style: TextStyle(fontSize: 16, height: 1.5),
                        ),
                        SizedBox(height: 10),
                        Text(
                          culture['further_description'] ?? '',
                          style: TextStyle(fontSize: 16, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: (culture['image'] as List).map<Widget>((img) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Image.asset(
                            img,
                            fit: BoxFit.cover,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
