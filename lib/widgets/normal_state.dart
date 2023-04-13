import 'package:flutter/material.dart';

Widget normalState() {
  const linkBanner =
      'https://i.pinimg.com/originals/95/b1/82/95b182e2f0b91fe82c8bcb3abfe25bc4.jpg';
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
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
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 30),
                      child: Text(
                        'Introduce Un Server',
                        style: TextStyle(fontSize: 30,
                        fontFamily: 'popins',
                        fontWeight: FontWeight.bold,
                                      
                        ),
                        
                      ),
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
