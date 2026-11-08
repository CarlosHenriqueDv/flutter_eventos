import 'package:flutter_eventos/model/dietary_preference.dart';
import 'package:flutter_eventos/model/type_ticket.dart';

class EventRegistration {

  String fullName;
  String email;
  TypeTicket typeTicket;
  DietaryPreference dietaryPreference;

  EventRegistration({
    required this.fullName,
    required this.email,
    required this.typeTicket,
    required this.dietaryPreference,
  });
  

}