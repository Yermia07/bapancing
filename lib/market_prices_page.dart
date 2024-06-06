import 'package:flutter/material.dart';
import 'models/market_price.dart';

class MarketPricesPage extends StatelessWidget {
  final List<MarketPrice> marketPrices = [
    MarketPrice(species: 'Tuna', price: 10000),
    MarketPrice(species: 'Salmon', price: 15000),
    // Tambahkan data contoh lainnya
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harga Pasar'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: marketPrices.length,
              itemBuilder: (context, index) {
                final price = marketPrices[index];
                return ListTile(
                  title: Text(price.species),
                  subtitle: Text('Harga: ${price.price} IDR'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
