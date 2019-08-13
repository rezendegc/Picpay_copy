import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final double height;

  const SearchBar({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(height / 2),
          border: Border.all(
            color: Colors.grey[400],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "A quem você quer pagar?",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
