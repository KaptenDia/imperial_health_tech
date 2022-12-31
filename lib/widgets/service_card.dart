import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    required this.backgrondColor,
    required this.image,
    required this.margin,
    super.key,
  });
  final Color backgrondColor;
  final String image;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: margin,
        width: 72,
        height: 72,
        decoration: BoxDecoration(
          color: backgrondColor,
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
          ),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
    );
  }
}
