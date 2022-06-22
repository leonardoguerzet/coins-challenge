import 'package:desafio_flutter_coins/src/utils/custom_colors.dart';
import 'package:desafio_flutter_coins/src/models/data_model.dart';
import 'package:flutter/material.dart';

class CoinStats extends StatelessWidget {
  const CoinStats({Key? key, required this.data}) : super(key: key);

  final DataModel data;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1 ${data.symbol} / BRL",
                style: theme.textTheme.caption,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "R\$ ${data.cotation}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
              Row(
                children: const [
                  Text(
                    "+0.15%",
                    style: TextStyle(
                      color: kSucessColor,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_up,
                    color: kSucessColor,
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Volume 24h BRL",
                style: theme.textTheme.caption,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "R\$ 1.305.854,45",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Row(
                children: const [
                  Text("+13.59%", style: TextStyle(color: kSucessColor, fontSize: 16),),
                  Icon(Icons.arrow_drop_up, color: kSucessColor,)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
