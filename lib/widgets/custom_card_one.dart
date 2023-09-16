import 'package:flutter/material.dart';

class CustomCardOne extends StatelessWidget {
  CustomCardOne({
      required this.img,
      @required this.underTxt,
  }); //---------------------------------------------------------------------------
  String ? img;
  String ? underTxt;
  //---------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return  Column(
      children:
      [
        const SizedBox(height: 50.0,),
        Column(
          children: [
            Container(
              width: 120.0,
              height: 120.0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 2.0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children:
                    [
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.green[100],
                        child: Image.asset('$img' , height: 85 , width: 85 , ),
                      ),
                      const SizedBox(height: 5.0,),
                      // Text('$upperTxt'),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5.0,),
            Text(
              '$underTxt',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
