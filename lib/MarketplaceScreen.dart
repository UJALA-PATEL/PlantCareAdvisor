import 'package:flutter/material.dart';

class MarketplaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Marketplace')),
      body: Center(child: Text('Marketplace Screen', style: TextStyle(fontSize: 24))),
    );
  }
}
