import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MarketingPage extends StatelessWidget {
  // รายการโปรโมชั่น
  final List<Map<String, String>> promotions = [
    {
      'title': 'ประกายจันทร์',
      'image': 'prakai_chan.png',
      'url': 'https://www.tublee.com/snack-box',
    },
    {
      'title': 'กาแฟเขาทะลุ',
      'image': 'hom_farm.jpg',
      'url':
          'https://www.homhomgroup.com/product/274/%E0%B9%80%E0%B8%A1%E0%B8%A5%E0%B9%87%E0%B8%94%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F-%E0%B9%80%E0%B8%82%E0%B8%B2%E0%B8%97%E0%B8%B0%E0%B8%A5%E0%B8%B8-%E0%B8%8A%E0%B8%B8%E0%B8%A1%E0%B8%9E%E0%B8%A3-%E0%B8%84%E0%B8%B1%E0%B8%94%E0%B8%9E%E0%B8%B4%E0%B9%80%E0%B8%A8%E0%B8%A9-%E0%B9%80%E0%B8%A1%E0%B9%87%E0%B8%94%E0%B9%83%E0%B8%AB%E0%B8%8D%E0%B9%88-%E0%B9%82%E0%B8%A3%E0%B8%9A%E0%B8%B1%E0%B8%AA%E0%B8%95%E0%B9%89%E0%B8%B2-%E0%B8%A2%E0%B8%B5%E0%B9%88%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B8%AB%E0%B8%AD%E0%B8%A1%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F-%E0%B9%80%E0%B8%A5%E0%B8%B7%E0%B8%AD%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B8%94%E0%B8%B1%E0%B8%9A%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%84%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%9A%E0%B8%94%E0%B9%84%E0%B8%94%E0%B9%89',
    },
    {
      'title': 'ข้าวสังข์หยด',
      'image': 'khao_sangyot.jpeg',
      'url': 'http://www.sangyodshop.com/category',
    },
    {
      'title': 'พรทิพย์ น้ำพริกกุ้งเสียบ',
      'image': 'pornthip.jpeg',
      'url':
          'https://pornthipphuket.com/product/%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B8%9E%E0%B8%A3%E0%B8%B4%E0%B8%81%E0%B8%81%E0%B8%B8%E0%B9%89%E0%B8%87%E0%B9%80%E0%B8%AA%E0%B8%B5%E0%B8%A2%E0%B8%9A%E0%B8%95%E0%B8%B3%E0%B8%AA%E0%B8%94/',
    },
    {
      'title': 'ขนมทรายลันตา',
      'image': 'khanom_sai_lanta.jpeg',
      'url':
          'https://www.xn--12ca9cdcza1fboh6b4ca0evmxcuh.com/p/3963/%E0%B8%82%E0%B8%99%E0%B8%A1%E0%B8%97%E0%B8%A3%E0%B8%B2%E0%B8%A2%E0%B8%A5%E0%B8%B1%E0%B8%99%E0%B8%95%E0%B8%B2-%E0%B8%82%E0%B8%99%E0%B8%A1%E0%B8%82%E0%B8%B5%E0%B9%89%E0%B8%A1%E0%B8%AD%E0%B8%94.html',
    },
    {
      'title': 'ขนมจีบป้าพิณ',
      'image': 'khanom_jeeb.jpeg',
      'url': 'https://w54335959.readyplanet.site/product/Product-001',
    },
    {
      'title': 'ไข่เค็ม ไชยา',
      'image': 'khai_khem.jpeg',
      'url':
          'https://www.lazada.co.th/products/12-i1516852723.html?spm=a2o4m.searchlist.list.3.14a91b66kVtl1l&trafficFrom=17449020_303586&laz_trackid=2:mm_150141143_51502503_2010552501:clkgismgd1isks46up31oq&mkttid=clkgismgd1isks46up31oq',
    },
    {
      'title': 'ขนมเต้าซ้อ',
      'image': 'tao_so.jpeg',
      'url':
          'https://www.lazada.co.th/products/-i4363752101-s17398017215.html?c=&channelLpJumpArgs=&clickTrackInfo=query%253A%2525E0%2525B9%252580%2525E0%2525B8%252595%2525E0%2525B9%252589%2525E0%2525B8%2525B2%2525E0%2525B8%25258B%2525E0%2525B9%252589%2525E0%2525B8%2525AD%2525E0%2525B9%252581%2525E0%2525B8%2525A1%2525E0%2525B9%252588%2525E0%2525B8%25259A%2525E0%2525B8%2525B8%2525E0%2525B8%25258D%2525E0%2525B8%252598%2525E0%2525B8%2525A3%2525E0%2525B8%2525A3%2525E0%2525B8%2525A1%253Bnid%253A4363752101%253Bsrc%253ALazadaMainSrp%253Brn%253A5da42d088281318a95bac6b03e858709%253Bregion%253Ath%253Bsku%253A4363752101_TH%253Bprice%253A80%253Bclient%253Adesktop%253Bsupplier_id%253A100277958179%253Bbiz_source%253Ah5_internal%253Bslot%253A0%253Butlog_bucket_id%253A470687%253Basc_category_id%253A14727%253Bitem_id%253A4363752101%253Bsku_id%253A17398017215%253Bshop_id%253A4063144%253BtemplateInfo%253A107882_A3_C_D_E%2523116808_A0%25231103_B_L%2523&freeshipping=1&fs_ab=2&fuse_fs=&lang=en&location=Phuket&price=8E%201&priceCompare=skuId%3A17398017215%3Bsource%3Alazada-search-voucher%3Bsn%3A5da42d088281318a95bac6b03e858709%3BunionTrace%3Aa3b511a017258611123597195e%3BoriginPrice%3A8000%3BvoucherPrice%3A8000%3BdisplayPrice%3A8000%3BsinglePromotionId%3A-1%3BsingleToolCode%3A-1%3BvoucherPricePlugin%3A1%3BbuyerId%3A0%3Btimestamp%3A1725861112909&ratingscore=4.878419452887538&request_id=5da42d088281318a95bac6b03e858709&review=329&sale=1104&search=1&source=search&spm=a2o4m.searchlist.list.0&stock=1&trafficFrom=17449020_303586&laz_trackid=2:mm_150141143_51502503_2010552501:clkgk25ii1iskshnne5j8f&mkttid=clkgk25ii1iskshnne5j8f',
    },
  ];

  // ฟังก์ชันเปิดลิงก์
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url); // แปลงลิงก์เป็น Uri
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri); // เปิด URL ถ้าสามารถเปิดได้
    } else {
      throw 'ไม่สามารถเปิดลิงก์ $url'; // ถ้าไม่สามารถเปิดลิงก์ได้ ให้แสดงข้อผิดพลาด
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2F2D5),
      appBar: AppBar(
        title: Text('การส่งเสริมการตลาด'),
        backgroundColor: Color(0xFFF6C2C2),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              children: promotions.map((promo) {
                return SizedBox(
                  width: 180, // ความกว้างคงที่
                  height: 230, // ความสูงคงที่
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 5,
                      child: InkWell(
                        onTap: () => _launchURL(promo['url']!),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                promo['image']!,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                promo['title']!,
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      )
    );

  }
}
