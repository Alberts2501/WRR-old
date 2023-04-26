import 'package:angel3_framework/angel3_framework.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
import 'package:angel3_orm/angel3_orm.dart';


@serializable
@orm
class User extends Model {
  String? firstName;
  String? lastName;
  String? personalCode;
  String? email;
  String? telephoneNumber;
  String? password;
  DateTime? registrationDate;

  User({required this.firstName, required this.lastName, required this.personalCode, required this.email, required this.telephoneNumber, required this.password});
}