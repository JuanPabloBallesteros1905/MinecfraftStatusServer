import 'package:flutter/material.dart';
import 'package:minecraft_status_server/peticiones/peticiones.dart';

Widget isTrue() {

  Peticiones pe = Peticiones();

  const linkBanner = 'https://i.pinimg.com/originals/c2/fd/35/c2fd35eb820a28923f8423e4d68883bb.jpg';

  return Column(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
        
          width: 200,
          height: 50,
          child:  const FadeInImage(
            placeholder:  NetworkImage('https://placekitten.com/200/300'),
            image: NetworkImage(linkBanner),
            fit: BoxFit.cover,
          ),
        ),
      ),
      ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        child: Container(
          color: Colors.blue,
          width: 200,
          height: 170,
          child: Column(
            children: [
              Text(
                pe.server?['online'].toString() ?? 'introduce Un Server  ',
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

