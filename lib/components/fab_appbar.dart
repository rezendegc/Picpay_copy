import 'package:flutter/material.dart';
import 'package:piccopy/components/fab_item.dart';

class FABBottomAppBar extends StatefulWidget {
  const FABBottomAppBar({
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.onTabSelected,
    this.pageController,
    this.isPaymentSelected = false,
  });

  final bool isPaymentSelected;
  final PageController pageController;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final VoidCallback onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    if (widget.onTabSelected != null) widget.onTabSelected();
    setState(() {
      _selectedIndex = index;
    });
    widget.pageController?.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (widget.isPaymentSelected) _selectedIndex = -1;

    return BottomAppBar(
      elevation: 1,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 0.6),
        child: Container(
          height: widget.height,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FABItem(
                text: "Início",
                iconData: Icons.home,
                iconColor:
                    _selectedIndex == 0 ? Colors.green[900] : Colors.grey,
                iconSize: widget.iconSize,
                onPressed: () => _updateIndex(0),
              ),
              FABItem(
                text: "Carteira",
                iconData: Icons.credit_card,
                iconColor:
                    _selectedIndex == 1 ? Colors.green[900] : Colors.grey,
                iconSize: widget.iconSize,
                onPressed: () => _updateIndex(1),
              ),
              SizedBox(width: screenWidth / 5),
              FABItem(
                text: "Notificações",
                iconData: Icons.notifications,
                iconColor:
                    _selectedIndex == 2 ? Colors.green[900] : Colors.grey,
                iconSize: widget.iconSize,
                onPressed: () => _updateIndex(2),
              ),
              FABItem(
                text: "Ajustes",
                iconData: Icons.settings,
                iconColor:
                    _selectedIndex == 3 ? Colors.green[900] : Colors.grey,
                iconSize: widget.iconSize,
                onPressed: () => _updateIndex(3),
              ),
            ],
          ),
        ),
      ),
      color: widget.backgroundColor,
    );
  }
}
