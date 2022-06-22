import 'package:desafio_flutter_coins/src/models/data_model.dart';
import 'package:flutter/material.dart';

class CoinDescription extends StatelessWidget {
  const CoinDescription({Key? key, required this.data}) : super(key: key);

  final DataModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(data.message, style: const TextStyle(color: Colors.white, fontSize: 15),),
    );
  }
}
