import 'package:flutter/material.dart';
import 'package:piccopy/components/avatar_display.dart';
import 'package:piccopy/components/horizontal_contact.dart';

class MainPayment extends StatelessWidget {
  const MainPayment({Key key}) : super(key: key);

  Widget _buildAvatars(BuildContext context, int index) {
    if (index == 0) return const SizedBox(width: 20);
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
      child: AvatarDisplay(),
    );
  }

  Widget _buildHorizontalCard(BuildContext context, int index) {
    if (index == 0) return const SizedBox(height: 20);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: HorizontalContact(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 25),
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
          Divider(indent: 30, endIndent: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Próximos de você",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              const SizedBox(height: 15),
              HorizontalContact(),
              const SizedBox(height: 15),
              HorizontalContact(),
              const SizedBox(height: 15),
              HorizontalContact(),
            ],
          ),
          Divider(
            indent: 30,
            endIndent: 30,
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Contatos",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
            ],
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 50,
            itemBuilder: _buildHorizontalCard,
          ),
        ],
      ),
    );
  }
}
