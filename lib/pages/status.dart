import 'package:band_mames/services/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class StatusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final socketService = Provider.of<SocketService>(context);

    // socketService.socket.emit(event)


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ServerStatus: ${ socketService.serverStatus }')
          ],
        ),
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.message),
       onPressed: (){
         //TAREA
         //emitir: emitir-mensaje
         //{nombre: 'flutter', mensaje: 'Erick Cavero' }

         socketService.socket.emit('emitir-mensaje', {

           'nombre': 'Flutter',
           'mensaje': 'Hola desde Flutter'

         });
       },
     ),
   );
  }
}