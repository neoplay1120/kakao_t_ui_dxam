import 'dart:io';

class Menu {
  final String imageUrl;
  final String title;
  final bool isFavorite;

  Menu({this.imageUrl, this.title, this.isFavorite});
}


void main () {

  int num = int.parse(stdin.readLineSync());

  print(num);
}