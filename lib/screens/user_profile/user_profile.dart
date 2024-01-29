import 'package:flutter/material.dart';
import 'package:my_project/screens/user_profile/widgets/navigation_widgets.dart';
import 'package:my_project/screens/user_profile/widgets/user_widgets.dart';

class UserProfile extends StatelessWidget {
  //Имя переменной всегда начинается с маленькой буквы
  static const List<MenuRowData> navigationMenuOne = [
    MenuRowData(Icons.bookmark, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папки с чатами'),
  ];

  //Тут нужно имя поменять на маленькую букву в начале
  static const List<MenuRowData> NavigationMenuTwo = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.private_connectivity, 'Конфиденциальность'),
    MenuRowData(Icons.memory, 'Данные и память'),
    MenuRowData(Icons.brush, 'формление'),
    MenuRowData(Icons.language, 'Язык'),
  ];

  //Тут нужно имя поменять на маленькую букву в начале
  static const List<MenuRowData> NavigationMenuThree = [
    MenuRowData(Icons.lock_clock, 'Apple Watch'),
  ];

  //Тут нужно имя поменять на маленькую букву в начале
  static const List<MenuRowData> NavigationMenuFour = [
    MenuRowData(Icons.help, 'Помощь'),
    MenuRowData(Icons.question_answer_outlined, 'Вопросы о Telegramm'),
  ];

  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Настройки'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            _UserInfo(),
            const SizedBox(
              height: 20, // <- Не нужна запятая
            ),
            const MenuRowWidgets(menuRow: navigationMenuOne),
            const SizedBox(
              height: 20,  // <- Не нужна запятая
            ),
            const MenuRowWidgets(menuRow: NavigationMenuTwo),
            const SizedBox(
              height: 20,  // <- Не нужна запятая
            ),
            const MenuRowWidgets(menuRow: NavigationMenuThree),
            const SizedBox(
              height: 20,  // <- Не нужна запятая
            ),
            const MenuRowWidgets(menuRow: NavigationMenuFour),
          ],
        ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 20, // <- Не нужна запятая
              ),
              const AvatarWidget(),
              const SizedBox(
                height: 20, // <- Не нужна запятая
              ),
              const UserNameWidget(),
              const SizedBox(
                height: 10, // <- Не нужна запятая
              ),
              UserEmailWidget(),
              const SizedBox(
                height: 10, // <- Не нужна запятая
              ),
              const UserPhoneWidget(),
            ],
          ),
        ),
        const Positioned(
          top: 10,
          right: 10,
          child: Text(
            'Изм.',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
