import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  static const List<MenuRowData> firstMenuRow = [
    MenuRowData(Icons.bookmark, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатами')
  ];
  static const List<MenuRowData> secondMenuRow = [
    MenuRowData(Icons.notifications, 'Уведомление и звуки'),
    MenuRowData(Icons.private_connectivity, 'Конфиденцильность '),
    MenuRowData(Icons.memory, 'Данные и память'),
    MenuRowData(Icons.brush, 'Оформление'),
    MenuRowData(Icons.language, 'Язык')
  ];
  static const List<MenuRowData> thridMenuRow = [
    MenuRowData(Icons.lock_clock, 'Apple Watch')
  ];

  static const List<MenuRowData> frountMenu = [
    MenuRowData(Icons.help, 'Помощь'),
    MenuRowData(Icons.question_answer_outlined, 'Вопросы о Telegramm')
  ];

  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: const [
            _UserInfo(),
            SizedBox(
              height: 25,
            ),
            _MenuWidget(
              menuRow: firstMenuRow,
            ),
            SizedBox(
              height: 25,
            ),
            _MenuWidget(menuRow: secondMenuRow),
            SizedBox(
              height: 25,
            ),
            _MenuWidget(
              menuRow: thridMenuRow,
            ),
            SizedBox(
              height: 25,
            ),
            _MenuWidget(menuRow: frountMenu),
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  const MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;

  const _MenuWidget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow
            .map((data) => _MenuWidgetRow(
                  data: data,
                ))
            .toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Row(
        children: [
          Icon(data.icon),
          const SizedBox(
            width: 7,
          ),
          Expanded(
            child: Text(data.text),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UzerLoginWidget extends StatelessWidget {
  const _UzerLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@Ilya.Prudkiy20',
      style: TextStyle(
        color: Colors.black,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 30),
              _AvatarWidget(),
              const SizedBox(
                height: 30,
              ),
              const _UzerLoginWidget(),
              const SizedBox(
                height: 10,
              ),
              const _UserPhoneWiget(),
              const SizedBox(
                height: 10,
              ),
              const _UserNameWiget(),
            ],
          ),
        ),
        const Positioned(
          top: 20,
          right: 10,
          child: Text(
            'Изм.',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 17,
            ),
          ),
        )
      ],
    );
  }
}

class _UserPhoneWiget extends StatelessWidget {
  const _UserPhoneWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+380 9733 32037',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserNameWiget extends StatelessWidget {
  const _UserNameWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Ilya Prudkiy',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}
