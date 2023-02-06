import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:cash_new_revenue/widgets/home_page.dart';
import 'package:flutter/material.dart';

class Cash extends StatefulWidget {
  const Cash({Key? key}) : super(key: key);

  @override
  State<Cash> createState() => _CashState();
}

class _CashState extends State<Cash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        // IconButton(onPressed: (){}, icon: back),
        automaticallyImplyLeading: true,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
                // fit: FlexFit.loose,
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(right: 4),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop(MaterialPageRoute(
                            builder: (context) => const HomePage()));
                      },
                      icon: back),
                )),
            Flexible(
              // fit: FlexFit.loose,
              flex: 7,
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  child: Text(accounts, style: sfProText17WC)),
            ),
            Flexible(flex: 1,child: Container()),
            Flexible(flex: 1,child: Container()),
          ],
        ),
        title: Text(cash, style: sfProText17WC),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: search),
          IconButton(onPressed: () {}, icon: add),
        ],
        backgroundColor: primary,
        foregroundColor: colorScheme,
      ),
      backgroundColor: primary,
    );
  }
}
