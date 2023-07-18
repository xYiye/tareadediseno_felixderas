import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(tareaDiseno());

class tareaDiseno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //primarySwatch: Colors.pinkAccent,
          ),
      home: Contacto(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Contacto extends StatelessWidget {
  final String nombreContacto = 'Pascualillo';
  final String numeroTelefono = '+504 9902-9311';
  String get formatoTelegram =>
      numeroTelefono.replaceAll('-', '').replaceAll(' ', '');
  /*
      Aqui solo modifico la variable para que cualquier numero que use, 
      se vea diferente en el apartado de telegram
    */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 48),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.pinkAccent,
              child: Text(
                nombreContacto.substring(0, 1).toUpperCase(),
                style: const TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              nombreContacto,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 16),
            const Divider(
              height: 1,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OpcionContacto(
                    icono: Icons.call,
                    etiqueta: 'Llamar',
                    color: Color(0xFF4D73B9),
                  ),
                  OpcionContacto(
                    icono: Icons.message_outlined,
                    etiqueta: 'Mensaje de texto',
                    color: Color(0xFF4D73B9),
                  ),
                  OpcionContacto(
                    icono: Icons.video_call_outlined,
                    etiqueta: 'Video',
                    color: Color(0xFF4D73B9),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Información de contacto',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 29),
                  Row(
                    children: [
                      Icon(
                        Icons.call_outlined,
                        color: Colors.grey[800],
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            numeroTelefono,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            'Celular',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Icon(
                        Icons.video_call_outlined,
                        color: Colors.grey[800],
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        Icons.message_outlined,
                        color: Colors.grey[800],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 24,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Enviar mensaje a $numeroTelefono',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 24,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Llamar a $numeroTelefono',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 24,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Videollamar a $numeroTelefono',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.telegram,
                        size: 24,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Mensaje al $formatoTelegram',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.telegram,
                        size: 24,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Llamada de voz al $formatoTelegram',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.telegram,
                        size: 24,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Videollamada al $formatoTelegram',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OpcionContacto extends StatelessWidget {
  final IconData icono;
  final String etiqueta;
  final Color color;

  const OpcionContacto({
    Key? key,
    required this.icono,
    required this.etiqueta,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icono,
          size: 24,
          color: color,
        ),
        const SizedBox(height: 8),
        Text(
          etiqueta,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: color,
          ),
        ),
      ],
    );
  }
}
