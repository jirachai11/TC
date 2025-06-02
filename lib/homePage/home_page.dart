import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final String textAppBar = 'สำรวจวัฒนธรรมภาคใต้';
  final String importantTraditions = '🛕 ประเพณีสำคัญ';
  final String localFood = '🍛 อาหารพื้นเมือง';

  final List<Map<String, String>> cultureItems = [
    {'title': '📿 ประเพณีสารทเดือนสิบ', 'description': 'เทศกาลที่จัดขึ้นเพื่อรำลึกถึงบรรพบุรุษ'},
    {'title': '🎭 การแสดงมโนราห์', 'description': 'ศิลปะการแสดงพื้นบ้านที่เป็นเอกลักษณ์ของภาคใต้'},
    {'title': '🚣 ประเพณีลอยเรือชาวเล', 'description': 'พิธีกรรมของชาวเลที่ลอยเรือจำลองในทะเลเพื่อบูชาบรรพบุรุษ'},
    {'title': '🚶‍♂️ ประเพณีชักพระ', 'description': 'การแห่พระพุทธรูปไปตามแม่น้ำหรือถนนในช่วงออกพรรษา'},
    {'title': '🕌 ประเพณีแห่ผ้าขึ้นธาตุ', 'description': 'การนำผ้าห่มไปห่มองค์พระบรมธาตุเจดีย์ที่นครศรีธรรมราช'},
  ];

  final List<Map<String, String>> foodItems = [
    {'title': '🌶️ แกงเหลือง', 'description': 'แกงรสจัดจ้านที่มีส่วนผสมของขมิ้นและเครื่องเทศ'},
    {'title': '🥥 ขนมโค', 'description': 'ขนมไทยที่ทำจากแป้งข้าวเหนียวไส้กะทิ'},
    {'title': '🔥 คั่วกลิ้ง', 'description': 'เนื้อสัตว์สับผัดกับเครื่องแกงใต้ รสเผ็ดร้อนและหอมสมุนไพร'},
    {'title': '🐟 แกงไตปลา', 'description': 'แกงเข้มข้นจากไตปลาหมัก ผักหลากหลาย และเครื่องแกงใต้'},
    {'title': '🍤 ผัดสะตอกะปิกุ้งสด', 'description': 'สะตอผัดกับกะปิและกุ้งสด รสชาติกลมกล่อมและหอมเฉพาะตัว'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2F2D5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/south.png',
                  width: double.infinity,
                  // height: 250,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    textAppBar,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                importantTraditions,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: cultureItems.map((item) {
                return _buildCultureCard(
                  title: item['title']!,
                  description: item['description']!,
                );
              }).toList(),
            ),
            // SizedBox(
            //   height: 200,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: cultureItems.map((item) {
            //       return Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //         child: _buildCultureCard(
            //           title: item['title']!,
            //           description: item['description']!,
            //         ),
            //       );
            //     }).toList(),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                localFood,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: foodItems.map((item) {
                return _buildCultureCard(
                  title: item['title']!,
                  description: item['description']!,
                );
              }).toList(),
            ),
            // SizedBox(
            //   height: 200,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: foodItems.map((item) {
            //       return Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //         child: _buildCultureCard(
            //           title: item['title']!,
            //           description: item['description']!,
            //         ),
            //       );
            //     }).toList(),
            //   ),
            // ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildCultureCard({required String title, required String description}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
