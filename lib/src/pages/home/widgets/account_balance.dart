import 'package:desafio_flutter_coins/src/utils/custom_colors.dart';
import 'package:desafio_flutter_coins/src/config/app_data.dart' as appData;
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AccountBalance extends StatefulWidget {
  const AccountBalance({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountBalance> createState() => _AccountBalanceState();
}

class _AccountBalanceState extends State<AccountBalance> {
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Saldo Disponível",
            style: theme.textTheme.caption,
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              !isLoading
                  ? Text(
                      "R\$ ${appData.user.userBalance}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    )
                  : Shimmer.fromColors(
                      child: Container(
                        height: 30,
                        width: 120,
                        color: Colors.white.withAlpha(50),
                      ),
                      baseColor: Colors.grey.shade800,
                      highlightColor: Colors.grey.shade500),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
              !isLoading
                  ? const Text(
                      "+3.17%",
                      style: TextStyle(color: kSucessColor, fontSize: 16),
                    )
                  : Shimmer.fromColors(
                      child: Container(
                        height: 20,
                        width: 60,
                        color: Colors.white.withAlpha(50),
                      ),
                      baseColor: Colors.grey.shade800,
                      highlightColor: Colors.grey.shade500),
              !isLoading ? const Icon(
                Icons.arrow_drop_up,
                color: kSucessColor,
                size: 26,
              ) : Shimmer.fromColors(
                  child: Container(
                    height: 20,
                    width: 30,
                    color: Colors.white.withAlpha(50),
                  ),
                  baseColor: Colors.grey.shade800,
                  highlightColor: Colors.grey.shade500),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          !isLoading ? Text(
            "Wallet ID: ${appData.user.walletId}",
            style: const TextStyle(color: Colors.white),
          ) : Shimmer.fromColors(
              child: Container(
                height: 20,
                width: 220,
                color: Colors.white.withAlpha(50),
              ),
              baseColor: Colors.grey.shade800,
              highlightColor: Colors.grey.shade500),
        ],
      ),
    );
  }
}
