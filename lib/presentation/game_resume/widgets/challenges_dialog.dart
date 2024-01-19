import 'package:flutter/material.dart';


class ChallengesDialog extends StatelessWidget {
  const ChallengesDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Retos de La fresita'),
      content: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            
            Container(
              margin: const EdgeInsets.symmetric( vertical: 10 ),
              padding: const EdgeInsets.all( 20 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular( 20 ),
                color: const Color(0xffE9476E)
              ),
              child: const Text('Pariatur aliquip mollit incididunt Lorem sit.', style: TextStyle(color: Color(0xffFFFFFF)),),
            ),

          ],
        ),
      ),
    );
  }
}