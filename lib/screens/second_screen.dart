import 'package:flutter/material.dart';
import 'package:coin_base_clone/models/fetchCoins_models/big_data_model.dart';
import 'package:coin_base_clone/repository/repository.dart';
import 'package:coin_base_clone/widgets/widgets.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late Future<BigDataModel> _futureCoins;
  late Repository repository;
  @override
  void initState() {
    repository = Repository();
    _futureCoins = repository.getCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BigDataModel>(
      future: _futureCoins,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            var coinsData = snapshot.data!.dataModel;
            return CoinList2Widget(coins: coinsData);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
