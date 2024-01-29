import 'package:flutter/material.dart';

//В идеале для удобства чтения кода желательно, чтобы у каждого класса виджета был отдельный файл
class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Placeholder(),
      ),
    );
  }
}

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Ilya Prudkiy',
      style: TextStyle(
        color: Colors.black,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class UserEmailWidget extends StatelessWidget {
  UserEmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Ilya_Prudkiy20@gmail.com',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17,
      ),
    );
  }
}

class UserPhoneWidget extends StatelessWidget {
  const UserPhoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+380 97 33 32 037',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17,
      ),
    );
  }
}
