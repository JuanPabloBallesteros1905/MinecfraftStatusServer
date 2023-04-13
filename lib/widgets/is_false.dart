import 'package:flutter/material.dart';

Widget isFalse() {
  const linkBanner =
      'https://i.pinimg.com/originals/95/b1/82/95b182e2f0b91fe82c8bcb3abfe25bc4.jpg';
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
          width: 300,
          height: 230,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 40, top: 100),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Column(
                      children: const [
                        Text(
                          'Servidor',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'popins',
                              fontWeight: FontWeight.bold),
                        ),
                        Text('Desconectado',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'popins',
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      )
    ],
  );
}
