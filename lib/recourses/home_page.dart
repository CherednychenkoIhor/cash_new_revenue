import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';

import 'numbers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextButton(
                    onPressed: () {},
                    child: const Text('Cansel',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Primary))),
                const Text('Income',
                    style: TextStyle(
                      fontFamily: 'SF_Pro_Text',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text('Done',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Primary))),
              ],
            ),
            const Divider(
              height: 1,
              color: Color(0x2c232c2d),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // ToggleButtons(
                  //   isSelected: isSelected,
                  //   onPressed: (int index) {
                  //     setState(() {
                  //       isSelected[index] = !isSelected[index];
                  //     });
                  //   },
                  //   borderRadius: const BorderRadius.all(Radius.circular(8)),
                  //   selectedBorderColor: Colors.green[700],
                  //   selectedColor: Colors.white,
                  //   fillColor: Colors.green[200],
                  //   color: Colors.green[400],
                  //   constraints: const BoxConstraints(
                  //     minHeight: 40.0,
                  //     minWidth: 80.0,
                  //   ),
                  //   children: const <Widget>[
                  //     Icon(Icons.circle),
                  //     Icon(Icons.circle),
                  //   ],
                  // )
                  Container(
                    child: const Text('\$0',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Primary)),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                    constraints: const BoxConstraints(
                      maxWidth: 2,
                      maxHeight: 48,
                    ),
                    color: const Color(0x80f8777d),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                  child: const Text('Settings',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 14,
                          color: Color(0x56232c2d))),
                ),
              ],
            ),
            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 13, 212, 13),
                    child: const Text('Category',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xB0232C2D)))),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: const Text('Salary',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Primary)),
                ),
                Expanded(child: IconButton(
                    onPressed: () {},
                    icon: navig_nxt,
                    padding: const EdgeInsets.fromLTRB(0, 14.11, 0, 14.11),
                    alignment: Alignment.bottomLeft),),
              ],
            ),
            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 13, 265, 13),
                    child: const Text('Date',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xB0232C2D)))),
                TextButton(
                  onPressed: () {},
                  child: const Text('Today',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Primary)),
                )
              ],
            ),
            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 13, 227, 13),
                    child: const Text('Account',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xB0232C2D)))),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: const Text('Cash',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Primary)),
                ),
                Expanded(child: IconButton(
                    onPressed: () {},
                    icon: navig_nxt,
                    padding: const EdgeInsets.fromLTRB(0, 14.11, 0, 14.11),
                    alignment: Alignment.bottomLeft),),
              ],
            ),
            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 13, 98, 13),
                    child: const Text('Transfer from Account',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xB0232C2D)))),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: const Text('Optional',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0x56232C2D))),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {},
                      icon: navig_nxt,
                      padding: const EdgeInsets.fromLTRB(0, 14.11, 0, 14.11),
                      alignment: Alignment.bottomLeft),
                ),
              ],
            ),
            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 13, 0, 13),
                    child: const Text('Notes',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xB0232C2D)))),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 14, 0, 0),
              color: const Color(0x90D2D5DB),
              child: const numbersOfKeyboard(),
            )

          ],
        ),
      ),
    );
  }
}
