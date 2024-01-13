import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final String? text;

  const RoundedContainer({
    super.key,
    this.text = ''
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric( vertical: 10 ),
      width: size.width,
      padding: const EdgeInsets.all(15),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: StadiumBorder(),
        shadows: [
          BoxShadow(
            // blurRadius: 0.0,  color: Colors.black // Tipo comic xd
            blurRadius: 5,
            offset: Offset(0, 5),
            color: Colors.black54
          )
        ]
      ),
      child:  Row(
        children: [
          const Icon( Icons.person_pin, size: 30, color: Color( 0xff393F45 ), ),
          const SizedBox( width: 10 ),
          Text(
            text ?? '',
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color( 0xff393F45 )
            ),
          ),
        ],
      ),
    );
  }
}