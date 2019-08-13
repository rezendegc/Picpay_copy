import 'package:flutter/material.dart';
import 'package:piccopy/components/fab.dart';
import 'package:piccopy/components/fab_appbar.dart';
import 'package:piccopy/screens/payment/home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double fabSize = 65;
  bool _paymentSelected = false;
  PageController _myPage = PageController(initialPage: 0);

  _changeSelected(bool isSelected) {
    setState(() {
      _paymentSelected = isSelected;
    });
  }

  void _goToPaymentHome() {
    _changeSelected(true);
    _myPage.jumpToPage(4);
  }

  @override
  Widget build(BuildContext context) {
    const gradient = [Colors.green, Colors.greenAccent];
    final gradient2 = [Colors.green[900], Colors.green[900]];

    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: CustomFAB(
            backgroundColors: _paymentSelected ? gradient2 : gradient,
            onTap: _goToPaymentHome,
          ),
        ),
        bottomNavigationBar: FABBottomAppBar(
          onTabSelected: () => _changeSelected(false),
          pageController: _myPage,
          isPaymentSelected: _paymentSelected,
        ),
        body: PageView(
          controller: _myPage,
          children: [
            Center(
              child: Container(
                child: Text('Início'),
              ),
            ),
            Center(
              child: Container(
                child: Text('Carteira'),
              ),
            ),
            Center(
              child: Container(
                child: Text('Notificações'),
              ),
            ),
            Center(
              child: Container(
                child: Text('Ajustes'),
              ),
            ),
            PaymentHome(),
          ],
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
