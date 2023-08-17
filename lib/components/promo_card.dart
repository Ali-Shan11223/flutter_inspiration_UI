import 'package:flutter/material.dart';

AspectRatio promoCard(String image) {
  return AspectRatio(
    aspectRatio: 1.3 / 1.5,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [
                  0.1,
                  0.9
                ],
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.1)
                ])),
      ),
    ),
  );
}
