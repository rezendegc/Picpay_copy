import 'package:flutter/material.dart';

class HorizontalContact extends StatelessWidget {
  const HorizontalContact({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60 / 2),
            child: Image.network(
              'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
              height: 60,
              width: 60,
            ),
          ),
          SizedBox(width: 30),
          Text(
            "Rotativo vitória",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
