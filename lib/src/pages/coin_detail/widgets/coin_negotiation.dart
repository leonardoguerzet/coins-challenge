import 'package:desafio_flutter_coins/src/models/data_model.dart';
import 'package:desafio_flutter_coins/src/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CoinNegotiation extends StatelessWidget {
  const CoinNegotiation({Key? key, required this.data}) : super(key: key);

  final DataModel data;

  @override
  Widget build(BuildContext context) {

    ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'COMPRAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: kSucessColor),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'VENDER',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: kDangerColor),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 10),
            child: Text('Taxa: ${data.fee}', style: theme.textTheme.caption,),
          ),
        ],
      ),
    );
  }
}
