import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.rotate(
          angle: 25,
          child: Container(
            alignment: Alignment.center,
            width: size.width * 0.75,
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              color: const Color(0xff4D79BB),
            ),
            child: const Text(
              'Tempor sit consectetur magna adipisicing labore officia reprehenderit labore ad.',
              style: TextStyle( color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ),
              textAlign: TextAlign.center,
            )
          ),
        ),
        GestureDetector(
          onTap: () {
            
          },
          child: Container(
            alignment: Alignment.center,
            width: size.width * 0.75,
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              color: const Color(0xff4788E9),
              boxShadow: const [
                  BoxShadow(
                    blurRadius: 2,
                    color:Colors.black38,
                    offset: Offset(-5, 5)
                  )
                ]
            ),
            child: Column(
              children: [
                const SizedBox( height: 50 ),
                const Expanded(
                  child: Text(
                    'Tempor sit consectetur magna adipisicing labore officia reprehenderit labore ad.',
                    style: TextStyle( color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ),
                    textAlign: TextAlign.center,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: ( context ) {
                        return AlertDialog(
                          content: SingleChildScrollView(
                            child: Column(
                              children: [
                                const Text(
                                  '¿Seguro que deseas completar el reto?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ),
                                ),
                                const SizedBox( height: 30 ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    '¡Completar!',
                                    style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ),
                                  )
                                )
                              ],
                            ),
                          ),
                        );
                      }
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all( 10 ),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Text(
                      'Completar',
                      style: TextStyle( color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ),
                    ),
                  ),
                ),

                const SizedBox( height: 20 ),
                
              ],
            )
          ),
        ),
      ],
    );
  }
}
