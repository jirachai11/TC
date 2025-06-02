import 'package:flutter/material.dart';
import 'package:website_recommending_travel/historyPage/history_page.dart';
import 'package:website_recommending_travel/homePage/home_page.dart';
import 'package:website_recommending_travel/culturePage/culture_page.dart';
import 'package:website_recommending_travel/marketingPage/marketing_page.dart';
import 'package:website_recommending_travel/websiteHistoryPage/website_history_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'วัฒนธรรมภาคใต้',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0; // เก็บ index ของแท็บที่ถูกเลือก

// สี
// 0xFFD4EDF4
// 0xFFE2F2D5
// 0xFFF9FBBA
// 0xFFF6C2C2

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0), // เพิ่ม padding บน-ล่าง อย่างละ 10
            child: Text(
              'การวิจัยการพัฒนาเว็บไซต์ศิลปะวัฒนธรรมภาคใต้ในประเทศไทย',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Container(
            color: Color(0xFFF6C2C2),
            child: TabBar(
              controller: _tabController,
              labelColor: Color(0xFFF9FBBA),
              unselectedLabelColor: Color(0xFFD4EDF4),
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.home, color: _selectedIndex == 0 ? Color(0xFFF9FBBA) : Color(0xFFD4EDF4)),
                  text: 'หน้าแรก',
                ),
                Tab(
                  icon: Icon(Icons.library_books, color: _selectedIndex == 1 ? Color(0xFFF9FBBA) : Color(0xFFD4EDF4)),
                  text: 'ประวัติความเป็นมา',
                ),
                Tab(
                  icon: Icon(Icons.theater_comedy, color: _selectedIndex == 2 ? Color(0xFFF9FBBA) : Color(0xFFD4EDF4)),
                  text: 'วัฒนธรรม',
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart, color: _selectedIndex == 3 ? Color(0xFFF9FBBA) : Color(0xFFD4EDF4)),
                  text: 'การส่งเสริมการตลาด',
                ),
                Tab(
                  icon: Icon(Icons.bookmark, color: _selectedIndex == 4 ? Color(0xFFF9FBBA) : Color(0xFFD4EDF4)),
                  text: 'ความเป็นมาเว็ปไซต์',
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomePage(),
          HistoryPage(),
          CulturePage(),
          MarketingPage(),
          WebsiteHistoryPage(),
        ],
      ),
    );
  }
}
