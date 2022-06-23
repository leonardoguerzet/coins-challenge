import 'package:desafio_flutter_coins/src/controller/loading_controller.dart';
import 'package:desafio_flutter_coins/src/utils/custom_colors.dart';
import 'package:desafio_flutter_coins/src/config/app_data.dart' as appData;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class AccountBalance extends StatelessWidget {
  final controller = Get.put(LoadingController());

  AccountBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Obx(
      () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Saldo Disponível",
                  style: theme.textTheme.caption,
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                controller.isLoading()
                    ? Text(
                        "R\$ ${appData.user.userBalance}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      )
                    : Shimmer.fromColors(
                        baseColor: Colors.grey.shade800,
                        highlightColor: Colors.grey.shade500,
                        child: Container(
                          height: 30,
                          width: 120,
                          color: Colors.white.withAlpha(50),
                        )),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(55, 66, 82, .78),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "+ Adicionar Fundos",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                controller.isLoading()
                    ? const Text(
                        "+3.17%",
                        style: TextStyle(color: kSucessColor, fontSize: 16),
                      )
                    : Shimmer.fromColors(
                        baseColor: Colors.grey.shade800,
                        highlightColor: Colors.grey.shade500,
                        child: Container(
                          height: 20,
                          width: 60,
                          color: Colors.white.withAlpha(50),
                        )),
                controller.isLoading()
                    ? const Icon(
                        Icons.arrow_drop_up,
                        color: kSucessColor,
                        size: 26,
                      )
                    : Shimmer.fromColors(
                        baseColor: Colors.grey.shade800,
                        highlightColor: Colors.grey.shade500,
                        child: Container(
                          height: 20,
                          width: 30,
                          color: Colors.white.withAlpha(50),
                        )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            controller.isLoading()
                ? Text(
                    "Wallet ID: ${appData.user.walletId}",
                    style: const TextStyle(color: Colors.white),
                  )
                : Shimmer.fromColors(
                    baseColor: Colors.grey.shade800,
                    highlightColor: Colors.grey.shade500,
                    child: Container(
                      height: 20,
                      width: 220,
                      color: Colors.white.withAlpha(50),
                    )),
          ],
        ),
      ),
    );
  }
}
