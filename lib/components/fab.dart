import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final double fabSize;
  final VoidCallback onTap;
  final List<Color> backgroundColors;

  const CustomFAB({
    Key key,
    this.fabSize = 60,
    this.onTap,
    this.backgroundColors = const [Colors.green, Colors.greenAccent],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(fabSize / 2),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: fabSize,
            height: fabSize,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: backgroundColors,
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.attach_money,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  "Pagar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
