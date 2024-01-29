import 'package:flutter/material.dart';
import 'package:my_project/widgets/navigation_widgets.dart';
import 'package:my_project/widgets/user_widgets.dart';

class UserProfile extends StatelessWidget {
  static const List<MenuRowData> NavigationMenuOne = [
    MenuRowData(Icons.bookmark, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папки с чатами'),
  ];

  static const List<MenuRowData> NavigationMenuTwo = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.private_connectivity, 'Конфиденциальность'),
    MenuRowData(Icons.memory, 'Данные и память'),
    MenuRowData(Icons.brush, 'формление'),
    MenuRowData(Icons.language, 'Язык'),
  ];

  static const List<MenuRowData> NavigationMenuThree = [
    MenuRowData(Icons.lock_clock, 'Apple Watch'),
  ];

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
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            _UserInfo(),
            SizedBox(height: 20,),
          const  MenuRowWidgets(menuRow: NavigationMenuOne),
            SizedBox(height: 20,),
            const  MenuRowWidgets(menuRow: NavigationMenuTwo ),
            SizedBox(height: 20,),
            const  MenuRowWidgets(menuRow: NavigationMenuThree),
            SizedBox(height: 20,),
            const  MenuRowWidgets(menuRow: NavigationMenuFour),
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
                height: 20,
              ),
              const AvatarWidget(),
              const SizedBox(
                height: 20,
              ),
              UserNameWidget(),
              const SizedBox(
                height: 10,
              ),
              UserEmailWidget(),
              const SizedBox(
                height: 10,
              ),
              const UserPhoneWidget(),
            ],
          ),
        ),
        const Positioned( top:10 , right: 10, child: Text('Изм.',
          style: TextStyle(color: Colors.blue,fontSize: 17,),),  ),
      ],
    );
  }
}
