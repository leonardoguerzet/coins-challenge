import 'package:desafio_flutter_coins/src/controller/loading_controller.dart';
import 'package:desafio_flutter_coins/src/pages/coin_detail/widgets/single_coin.dart';
import 'package:desafio_flutter_coins/src/pages/home/widgets/crypto_card.dart';
import 'package:desafio_flutter_coins/src/config/app_data.dart' as appData;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class UserBalance extends StatelessWidget {
  final controller = Get.put(LoadingController());

  UserBalance({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Obx(() => Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    appData.user.message,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  controller.isLoading()
                      ? Text(
                          "Total: R\$ ${appData.user.userBalance}",
                          style: theme.textTheme.caption,
                        )
                      : Shimmer.fromColors(
                          baseColor: Colors.grey.shade800,
                          highlightColor: Colors.grey.shade500,
                          child: Container(
                            height: 30,
                            width: 120,
                            color: Colors.white.withAlpha(50),
                          )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              controller.isLoading()
                  ? ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return CryptoCard(
                            onPressed: () {
                              Get.to(
                                SingleCoin(
                                  data: appData.cryptos[index],
                                ),
                              );
                            },
                            data: appData.cryptos[index]);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: appData.cryptos.length,
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Shimmer.fromColors(
                            enabled: controller.isLoading(),
                            baseColor: Colors.grey.shade800,
                            highlightColor: Colors.grey.shade500,
                            child: Container(
                              height: 90,
                              color: Colors.white.withAlpha(50),
                            ));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: appData.cryptos.length,
                    )
            ],
          ),
        ));
  }
}
