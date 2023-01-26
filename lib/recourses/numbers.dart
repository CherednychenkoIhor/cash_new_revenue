import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';

class numbersOfKeyboard extends StatelessWidget {
  const numbersOfKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
              child: Column(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        '1',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '2',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'A B C',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '3',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'D E F',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '4',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'G H I',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '5',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'J K L',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '6',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'M N O',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '7',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'P Q R S',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '8',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'T U V',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '9',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'W X Y Z',
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 117,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.fromLTRB(129, 6, 0, 6),
              child: Column(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        '0',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(56, 0, 0, 0),
              child: IconButton(onPressed: () {}, icon: cancel),
            )
          ],
        ),
        Center(
          child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 14, 5),
          constraints: const BoxConstraints(
            maxWidth: 134,
            maxHeight: 5,
          ),
          color: const Color(0xFF000000),
        ),)
      ],
    );
  }
}
