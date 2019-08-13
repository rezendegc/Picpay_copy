import 'package:flutter/material.dart';
import 'package:piccopy/components/avatar_display.dart';

class MainPayment extends StatelessWidget {
  const MainPayment({Key key}) : super(key: key);

  Widget _buildAvatars(BuildContext context, int index) {
    if (index == 0) return const SizedBox(width: 20);
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
      child: AvatarDisplay(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Sugestões para você",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
          ],
        ),
        Container(
          height: 140,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: _buildAvatars,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(),
        ),
      ],
    );
  }
}
