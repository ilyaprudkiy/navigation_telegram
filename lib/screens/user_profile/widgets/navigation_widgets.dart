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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          //Если в объект передается лишь 1 параметр, то не стоит ставить в конце запятую
          //Так как при форматировании кода оно будет перебрасывать на отдельную строку
          //А это нагруждает немного код
          Icon(data.icons),
          const SizedBox(
            width: 10, // <- Вот тут тоже запятую можешь убрать
          ),
          Expanded(
            child: Text(data.text),  // <- И вот тут и потом отформатировать
          ),
          const Icon(Icons.chevron_right),
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
