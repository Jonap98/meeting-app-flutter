
import 'package:beardog_app/presentation/lobby/widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateRoomDialog extends StatelessWidget {
  const CreateRoomDialog({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Crear Sala'),
      content: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Text('Nombre'),
              const SizedBox(height: 10),
              const CustomTextFormField(
                hint: 'Nombre',
                label: 'Nombre de sala',
              ),
              
              const SizedBox(height: 20),
              
              const Text('Password'),
              const SizedBox(height: 10),
              const CustomTextFormField(
                hint: 'Password',
                label: 'Password de acceso',
              ),
        
              const SizedBox(height: 20),
        
              const Text('Cantidad de retos'),
              const SizedBox(height: 10),
              const CustomTextFormField(
                hint: 'Cantidad',
                label: 'Cantidad de retos',
                type: TextInputType.number,
              ),
        
              const SizedBox(height: 10),
        
              SizedBox(
                width: size.width,
                child: ElevatedButton(
                  onPressed: () => {
                    // Feedback.forTap(context)
                    context.push('/waiting-room')
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>( Colors.redAccent ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(size.height * 0.04),
                      )
                    )
                  ),
                  child: const Text('Comenzar', style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}