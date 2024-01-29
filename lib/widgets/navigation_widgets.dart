import 'package:flutter/material.dart';

class _MenuWidgets extends StatelessWidget {
  final MenuRowData data;

  _MenuWidgets({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Icon(
            data.icons,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(data.text),
          ),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class MenuRowData {
  final IconData icons;
  final String text;

  const MenuRowData(this.icons, this.text);
}

class MenuRowWidgets extends StatelessWidget {
  final List<MenuRowData> menuRow;

  const MenuRowWidgets({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: menuRow
            .map((data) => _MenuWidgets(
                  data: data,
                ))
            .toList(),
      ),
    );
  }
}
