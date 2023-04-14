import 'package:flutter/material.dart';

Widget isTrue() {
  const linkBanner =
      'https://i.pinimg.com/originals/95/b1/82/95b182e2f0b91fe82c8bcb3abfe25bc4.jpg';

  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
          shadowColor: Colors.amber,
          elevation: 70,
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
                          Text('Online',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'popins',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
