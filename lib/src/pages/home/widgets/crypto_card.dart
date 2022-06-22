import 'package:desafio_flutter_coins/src/models/data_model.dart';
import 'package:flutter/material.dart';

class CryptoCard extends StatelessWidget {
  const CryptoCard({Key? key, required this.onPressed, required this.data})
      : super(key: key);

  final VoidCallback onPressed;
  final DataModel data;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: 90,
            color: const Color.fromRGBO(55, 66, 92, .4),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Image.network(data.imageUrl),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${data.currencyName} (${data.symbol})",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Balance: 0.00000 ${data.symbol}",
                      style: theme.textTheme.caption?.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "R\$ ${data.cotation}",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
