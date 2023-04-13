import 'package:flutter/material.dart';

Widget isFalse() {
  const linkBanner = 'https://wallpaperaccess.com/full/533292.jpg';
  return Column(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10)),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(linkBanner), fit: BoxFit.cover)),
          width: 250,
          height: 230,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 100),
                child: Column(
                  children: const [
                    Text(
                      'Servidor',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'Desconectado',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}
