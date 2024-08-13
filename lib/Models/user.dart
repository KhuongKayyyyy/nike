import 'interest.dart';
class User {
  final String name;
  final String account;
  final String password;
  final String imgURL;
  List<Interest> interestList;

  User({required this.name,required this.account, required this.password, required this.imgURL, required this.interestList});
}