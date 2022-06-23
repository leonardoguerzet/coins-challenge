import 'package:desafio_flutter_coins/src/pages/home/widgets/account_balance.dart';
import 'package:desafio_flutter_coins/src/pages/home/widgets/notification_icon.dart';
import 'package:desafio_flutter_coins/src/pages/home/widgets/user_balance.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.menu),
        ),
        title: const Text("Desafio Coins"),
        centerTitle: true,
        actions: const [
          NotificationIcon(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            AccountBalance(),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: Color.fromRGBO(97, 99, 119, 1),
              ),
            ),
            const SizedBox(height: 15,),
            UserBalance(),
          ],
        ),
      ),
    );
  }
}
