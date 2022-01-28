import 'package:flutter/material.dart';

class ScrollableSection extends StatelessWidget {
  const ScrollableSection({Key? key, this.children = const <Widget>[]})
      : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: children,
      ),
    );
  }
}
