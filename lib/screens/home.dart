import 'package:flutter/material.dart';
import 'package:minecraft_status_server/peticiones/peticiones.dart';
import 'package:minecraft_status_server/widgets/is_false.dart';
import 'package:minecraft_status_server/widgets/is_true.dart';
import '../widgets/normal_state.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Peticioes pe = Peticioes();

  //Esto es para agarrar el texto del input
  final userInput = TextEditingController();
  String endPoint = '';

  @override
  Widget build(BuildContext context) {
    final textFieldHeiht = MediaQuery.of(context).size.width * 0.2;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Minecraft Status Server'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future: pe.getInfoServer(endPoint),
                builder: (context, AsyncSnapshot snapshot) {
                  if (pe.server?['online'] == null) {
                    return normalState();
                  }
                  if (pe.server?['online'] == true) {
                    return isTrue();
                  }
                  if (pe.server?['online'] == false) {
                    return isFalse();
                  } else {
                    return Container();
                  }
                },
              ),
              const SizedBox(height: 30),
              Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: textFieldHeiht,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: userInput,
                        decoration: const InputDecoration(
                            hintText: 'Direccion del server'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pe.getInfoServer(endPoint);
                              endPoint = userInput.text;

                              print('CACTH: $endPoint');
                            });
                          },
                          child: Text('Buscar'))
                    ],
                  ))
            ],
          ),
        ));
  }
}

        