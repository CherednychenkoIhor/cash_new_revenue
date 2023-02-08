
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text('20000\$'),),
        Center(child: Text('20000\$'),),
        Center(child: Text('20000\$'),),
      ],
    );
  }
}
