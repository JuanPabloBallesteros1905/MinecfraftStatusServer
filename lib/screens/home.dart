import 'package:flutter/material.dart';
import 'package:minecraft_status_server/peticiones/peticiones.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Esto es para agarrar el texto del input
  final userInput = TextEditingController();

  String endPoint = '';

  Peticiones pe = Peticiones();

  @override
  Widget build(BuildContext context) {



    final textFieldHeiht = MediaQuery.of(context).size.width * 0.2;


    Widget waitingData(){
      return Container(
        width: 200,
        height: 200,
        child: CircularProgressIndicator(),


      );
    } 

    Widget isTrue(){
      return Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Container(
              color: Colors.amber,
              width: 200,     
              height: 50,
              child: const FadeInImage(placeholder: NetworkImage('https://placekitten.com/200/300'), image: NetworkImage('https://placekitten.com/200/300'),
              fit: BoxFit.cover,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 170,
              child: Column(
                children: [
                  Text('data'),

                  Text('data'),
                ],
              ),
              
            ),
          )
        ],
      );
    }


    

    







    return  Scaffold(
      appBar: AppBar(
        title: const Text('Minecraft Status Server'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            FutureBuilder(
              future: pe.getInfoServer(endPoint),
              builder: (context, AsyncSnapshot  snapshot) {

                return isTrue();











                // if (pe.server?['online'] == true  ) {
                //    return Container(
                //     child: Text('PRENDIDO'),
                //   );
                  
                // } if (pe.server?['online'] == false) {
                //    return Container(
                //     child: Text('APAGADO'),
                //   );
                  
                  
                // }else {
                //   return waitingData();
                // }





             
       
          
            },
            
            ),
            const SizedBox(height: 30),
        
            Container(
              margin: EdgeInsets.symmetric(horizontal: textFieldHeiht,   ),
              child: Column(
                children: [
                   TextField(
                    controller: userInput,
                    decoration: const InputDecoration(
                      hintText: 'Direccion del server'
                    ),
                  ),
                  const SizedBox(height: 10,),


                  ElevatedButton(onPressed: () {   
                    endPoint = userInput.text;
                    pe.getInfoServer(endPoint);
               
                    setState(() {
                      
                    });
                     
                  },
                  
                   child: const Text('Buscar'))


                ],
              )       
            )
          ],
        ),
      )
    );
  }
}
              // return ClipRRect(
              //   borderRadius: BorderRadius.circular(20),
              //   child: Container(
              //     color: Colors.amber,
              //     height: 200,
              //     width: 200,