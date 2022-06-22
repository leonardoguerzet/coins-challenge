import 'package:desafio_flutter_coins/src/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 20),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          const Icon(Icons.notifications),
          Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kDangerColor,
            ),
          ),
        ],
      ),
    );
  }
}
