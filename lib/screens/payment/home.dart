import 'package:flutter/material.dart';
import 'package:piccopy/components/search_bar.dart';
import 'package:piccopy/screens/payment/main.dart';

class PaymentHome extends StatefulWidget {
  PaymentHome({Key key}) : super(key: key);

  _PaymentHomeState createState() => _PaymentHomeState();
}

class _PaymentHomeState extends State<PaymentHome> {
  final double _searchHeight = 80;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          bottom: TabBar(
            tabs: [
              Tab(text: "Principais"),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.place),
                    const SizedBox(width: 5),
                    Text("Locais"),
                  ],
                ),
              ),
              Tab(text: "Store"),
            ],
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey[700],
          ),
          title: Container(
            child: Row(
              children: [
                Icon(
                  Icons.nfc,
                  color: Colors.green,
                  size: 40,
                ),
                SearchBar(height: 40)
              ],
            ),
            height: _searchHeight,
            color: Colors.grey[200],
          ),
        ),
        body: TabBarView(
          children: [
            MainPayment(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
