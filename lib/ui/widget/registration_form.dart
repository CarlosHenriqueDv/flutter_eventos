import 'package:flutter/material.dart';
import 'package:flutter_eventos/model/dietary_preference.dart';
import 'package:flutter_eventos/model/type_ticket.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  TypeTicket selectedTicketTyppe = TypeTicket.regular;

  DietaryPreference selectedDietaryPreference =
      DietaryPreference.semPreferencia;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Nome Completo'),
          ),
          const SizedBox(height: 16),

          TextFormField(decoration: const InputDecoration(labelText: 'Email')),

          SizedBox(height: 16),

          TextFormField(
            decoration: InputDecoration(labelText: 'Número de Telefone'),
          ),

          SizedBox(height: 16),

          DropdownButtonFormField(
            initialValue: selectedTicketTyppe,
            decoration: const InputDecoration(labelText: 'Tipo de Ingresso'),
            items: [
              DropdownMenuItem(
                value: TypeTicket.gratuito,
                child: Text("Gratuito"),
              ),
              DropdownMenuItem(
                value: TypeTicket.regular,
                child: Text("Normal"),
              ),
              DropdownMenuItem(value: TypeTicket.vip, child: Text("VIP")),
            ],
            onChanged: (value) {
              setState(() {
                selectedTicketTyppe = value!;
              });
            },
          ),

          SizedBox(height: 16),

          DropdownButtonFormField(
            initialValue: selectedDietaryPreference,
            items: [
              DropdownMenuItem(
                value: DietaryPreference.semPreferencia,
                child: Text("Sem preferência"),
              ),
              DropdownMenuItem(
                value: DietaryPreference.livreGluten,
                child: Text("Livre de glúten"),
              ),
              DropdownMenuItem(
                value: DietaryPreference.vegetariano,
                child: Text("Vegetariano"),
              ),
              DropdownMenuItem(
                value: DietaryPreference.vegano,
                child: Text("Vegano"),
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedDietaryPreference = value!;
              });
            },
          ),

          SizedBox(height: 16),

          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.pink[700]),
            ),
            child: Text('Registrar', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
