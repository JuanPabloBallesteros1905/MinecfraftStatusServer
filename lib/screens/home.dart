import 'package:flutter/material.dart';
import 'package:minecraft_status_server/peticiones/peticiones.dart';
import 'package:minecraft_status_server/widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

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
        backgroundColor: const Color.fromRGBO(192, 192, 192, 1),
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
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return isLoading();
                  } else if (pe.server?['online'] == false) {
                    return isFalse();
                  } else if (pe.server?['online'] == true) {
                    return isTrue();
                  } else {
                    return normalState();
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
                        decoration:
                            const InputDecoration(hintText: '(Solo Java)'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pe.getInfoServer(endPoint);
                            endPoint = userInput.text;
                          });
                        },
                        child: const Text('Buscar'),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
