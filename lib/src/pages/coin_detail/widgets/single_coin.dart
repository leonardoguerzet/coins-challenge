import 'package:desafio_flutter_coins/src/models/data_model.dart';
import 'package:desafio_flutter_coins/src/pages/coin_detail/widgets/coin_description.dart';
import 'package:desafio_flutter_coins/src/pages/coin_detail/widgets/coin_negotiation.dart';
import 'package:desafio_flutter_coins/src/pages/coin_detail/widgets/coin_stats.dart';
import 'package:desafio_flutter_coins/src/pages/home/widgets/notification_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleCoin extends StatelessWidget {
  const SingleCoin({Key? key, required this.data}) : super(key: key);

  final DataModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
           Get.back();
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: Text("${data.currencyName} (${data.symbol})"),
        actions: const [
          NotificationIcon(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 25,),
            CoinStats(data: data,),
            const SizedBox(height: 30,),
            CoinDescription(data: data,),
            const SizedBox(height: 30,),
            CoinNegotiation(data: data,),
          ],
        ),
      ),
    );
  }
}
