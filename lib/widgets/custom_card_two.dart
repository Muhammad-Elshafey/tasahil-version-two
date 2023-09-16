import 'package:flutter/material.dart';
import 'package:tasahil/views/shakawy_view.dart';

class CustomCardTwo extends StatelessWidget {
  CustomCardTwo({
    required this.img,
    @required this.upperTxt,
  });
  //---------------------------------------------------------------------------
  String? img;
  String? upperTxt;
  //---------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50.0,
        ),
        Column(
          children: [
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ShakawyView(),));
              },
              child: Container(
                width: 250.0,
                height: 250.0,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  elevation: 2.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset(
                          '$img',
                          height: 170,
                          width: 170,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '$upperTxt',
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
