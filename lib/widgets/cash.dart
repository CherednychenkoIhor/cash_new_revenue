import 'package:cash_new_revenue/settings/monthly_page.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: colorScheme),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.2,
            leadingWidth: 130,
            automaticallyImplyLeading: true,
            leading: Row(
              children: [
                Flexible(
                    flex: 2,
                    child: IconButton(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => const HomePage()));
                        },
                        icon: back)),
                Flexible(
                    flex: 7,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => const HomePage()));
                        },
                        child: Text(accounts, style: sfProText20WC))),
              ],
            ),
            title: Text(cash, style: sfProText20GR),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  icon: search),
              IconButton(
                  padding: const EdgeInsets.all(0),
                  alignment: Alignment.center,
                  onPressed: () {},
                  icon: add),
            ],
            bottom: TabBar(tabs: [
              Tab(child: Text(daily, style: sfProText15Tap)),
              Tab(child: Text(weekly, style: sfProText15Tap)),
              Tab(child: Text(monthly, style: sfProText15Tap)),
              Tab(child: Text(yearly, style: sfProText15Tap)),
            ]),
            backgroundColor: primary,
            foregroundColor: colorScheme,
          ),
          // backgroundColor: primary,
          body: const TabBarView(children: [
            Center(child: Text('Tab 1 Content')),
            Center(child: Text('Tab 2 Content')),
            MonthlyPage(),
            Center(child: Text('Tab 4 Content')),
          ]),
        ),
      ),
    );
  }
}
