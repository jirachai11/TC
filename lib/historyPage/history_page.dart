import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final String textAppBar = 'ประวัติความเป็นมาวัฒนธรรมภาคใต้';

  final String topicTitle = 'วัฒนธรรมภาคใต้';
  final String topicDescription = '''
ภาคใต้ของประเทศไทยเป็นภูมิภาคที่มีลักษณะทางภูมิศาสตร์เฉพาะตัว โดยมีทั้งชายฝั่งทะเลอันดามันและอ่าวไทย ประกอบด้วยหลายจังหวัดที่มีความหลากหลายทางชาติพันธุ์ ศาสนา และวัฒนธรรมอย่างลึกซึ้ง

ในด้านศาสนา ภาคใต้มีประชากรที่นับถือศาสนาพุทธและอิสลามอยู่ร่วมกันอย่างกลมกลืน ศิลปะและวัฒนธรรมจึงมีการผสมผสานระหว่างความเชื่อ ประเพณี และวิถีชีวิตของทั้งสองศาสนา รวมถึงได้รับอิทธิพลจากชาวมาเลย์ อินเดีย และจีนผ่านการค้าขายในอดีต

เอกลักษณ์ของวัฒนธรรมภาคใต้จึงปรากฏในหลายรูปแบบ เช่น ภาษา การแต่งกาย อาหาร ดนตรี การแสดงพื้นบ้าน และประเพณีท้องถิ่น เช่น งานประเพณีชักพระ ประเพณีสารทเดือนสิบ และงานแข่งเรือยาว เป็นต้น
''';

  final String cultureTitle = 'ศิลปะการแสดงพื้นบ้าน';
  final String cultureDescription = '''
การแสดงพื้นบ้านภาคใต้ถือเป็นสมบัติวัฒนธรรมที่สืบทอดกันมาอย่างยาวนาน และสะท้อนถึงความคิด ความเชื่อ และวิถีชีวิตของคนในท้องถิ่นอย่างลึกซึ้ง ตัวอย่างที่สำคัญ ได้แก่:

🔹 **โนราห์ (มโนราห์)**  
เป็นการแสดงพื้นเมืองที่ผสมผสานการรำ ดนตรี และการแต่งกายที่งดงาม โดยมีรากฐานจากตำนานพื้นบ้านและความเชื่อเกี่ยวกับผีฟ้าเทพยดา โนราห์ถือเป็นการแสดงที่ต้องฝึกฝนอย่างจริงจัง และมีพิธีกรรมที่เกี่ยวข้องกับจิตวิญญาณด้วย เช่น การครอบครู

🔹 **หนังตะลุง**  
เป็นการแสดงเชิงศิลปะที่ใช้หนังวัวแกะเป็นตัวละคร นำมาฉายเงาบนจอผ้าขาว พร้อมบรรยายเรื่องราวผ่านคำพูด เสียงดนตรี และเพลงพื้นบ้าน นิยมเล่าเรื่องชาดก นิทาน หรือเรื่องตลกเพื่อให้ความรู้และความบันเทิง

🔹 **เพลงบอก**  
เป็นบทเพลงโต้ตอบกันระหว่างชายหญิงที่มีเนื้อหาเกี่ยวกับความรักหรือชีวิตประจำวัน ใช้ภาษาท้องถิ่นในการร้องและมีจังหวะสนุกสนาน

ศิลปะการแสดงเหล่านี้ไม่ได้เป็นเพียงความบันเทิง แต่ยังเป็นเครื่องมือถ่ายทอดความรู้ ประวัติศาสตร์ และจิตวิญญาณของท้องถิ่นจากรุ่นสู่รุ่น
''';

  final String foodTitle = 'อาหารพื้นเมืองภาคใต้';
  final String foodDescription = '''
อาหารพื้นเมืองภาคใต้มีชื่อเสียงในด้านรสชาติที่เข้มข้น เผ็ดจัด และใช้เครื่องเทศหลากชนิด โดยได้รับอิทธิพลจากอาหารมาเลย์ อินเดีย และจีนอย่างชัดเจน ซึ่งทำให้อาหารใต้มีรสชาติและกลิ่นเฉพาะตัวที่เป็นเอกลักษณ์

🍛 **แกงไตปลา**  
เป็นแกงที่มีรสจัดมากที่สุดในประเทศไทย ทำจากไตปลาหมัก มีเนื้อปลา ผักหลากชนิด เช่น หน่อไม้ ถั่วฝักยาว มะเขือ และฟักทอง นิยมทานกับข้าวสวยหรือขนมจีน

🥗 **ข้าวยำ**  
เป็นอาหารสุขภาพที่นิยมในจังหวัดชายแดนภาคใต้ มีส่วนผสมของข้าวหุง ผักสด เครื่องเคียงอย่างมะพร้าวคั่ว ปลาแห้ง และน้ำบูดูที่มีรสเค็มหวานคลุกเคล้ากันอย่างกลมกล่อม

🍢 **สะเต๊ะ**  
ได้รับอิทธิพลจากอาหารมาเลย์ เป็นเนื้อหมูหรือไก่หมักเสียบไม้ ปิ้งแล้วจิ้มกับน้ำจิ้มถั่วรสหวานมัน มักเสิร์ฟพร้อมอาจาด

นอกจากนี้ยังมีเมนูอื่นๆ เช่น แกงเหลือง แกงส้มใต้ น้ำพริกกะปิ และผักเหนาะ ซึ่งทั้งหมดล้วนสะท้อนถึงวัตถุดิบพื้นบ้าน และวิถีชีวิตชาวใต้ที่ผูกพันกับธรรมชาติและทะเล
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2F2D5),
      appBar: AppBar(
        title: Text(textAppBar),
        backgroundColor: Color(0xFFF6C2C2),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/history_main_cover.jpeg',
                height: 200,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 200,
                    color: Colors.red,
                    child: Center(
                        child: Text('โหลดรูปไม่ได้',
                            style: TextStyle(color: Colors.white))),
                  );
                },
              ),
            ),
            SizedBox(height: 16),

            Text(
              topicTitle,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF333333),
              ),
            ),
            SizedBox(height: 8),

            Text(
              topicDescription,
              style: TextStyle(fontSize: 16, color: Color(0xFF555555)),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),

            Card(
              color: Color(0xFFF9FBBA),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cultureTitle,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      cultureDescription,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),

            Card(
              color: Color(0xFFD4EDF4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodTitle,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      foodDescription,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
