import 'package:flutter/material.dart';
import 'package:tasahil/widgets/custom_card_one.dart';
import 'package:tasahil/widgets/custom_card_two.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(179, 11, 36, 0),
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Tasahil',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(179, 11, 36, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 100,
                ),
                const Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'مرحبا بك ..',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'في تطبيق تساهيل',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: Row(
                    children: [
                      CustomCardOne(
                        img: 'assets/right-to-objection-64.png',
                        underTxt: 'تقديم اعتراض',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardOne(
                        img: 'assets/opinions-50.png',
                        underTxt: 'رايك يهمنا  ',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardOne(
                        img: 'assets/crashed-car-50.png',
                        underTxt: 'سيارات تالفه',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardOne(
                        img: 'assets/calculate-.png',
                        underTxt: 'الشهادات الصحيه',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardOne(
                        img: 'assets/ask.png',
                        underTxt: ' طلب خدمه',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardOne(
                        img: 'assets/shahada.png',
                        underTxt: 'الشهادات الصحيه',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'صور وأرسل',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                        ),
                      ),
                      Text(
                        'بلغ عن مخالفات التشوه البصري',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: Row(
                    children: [
                      CustomCardTwo(
                        img: 'assets/road.png',
                        upperTxt: 'الطرق و الشوارع',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardTwo(
                        img: 'assets/reforestation.png',
                        upperTxt: 'الحدائق والاشجار',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardTwo(
                        img: 'assets/dark-alley.png',
                        upperTxt: 'إنارة الشوارع',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardTwo(
                        img: 'assets/closed-stores.png',
                        upperTxt: 'المتاجر',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardTwo(
                        img: 'assets/building.png',
                        upperTxt: 'المباني',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardTwo(
                        img: 'assets/flood.png',
                          upperTxt: 'مشاكل بيئيه',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CustomCardTwo(
                        img: 'assets/feeling-angry.png',
                        upperTxt: 'التخريب',
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
