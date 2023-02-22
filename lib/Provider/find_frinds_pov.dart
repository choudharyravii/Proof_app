import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proof/Model/find_frinds_model.dart';
// import 'package:provider/provider.dart';

class FindFriendsPov extends ChangeNotifier {
  var error = "Please Click on checkBox";
  
  final List<FindFriend> _myList = [
    FindFriend(
      name: 'Ms. Arthur Runolfsson',
      image: 'assets/images/man1.jpg',
      tags: 'Sports , Fashion, Games',
    ),
    FindFriend(
      name: 'Rachel Boehm',
      image: 'assets/images/man2.jpg',
      tags: 'Sports , Fashion, Games',
    ),
    FindFriend(
      name: 'Wilma Glover',
      image: 'assets/images/man1.jpg',
      tags: 'Sports , Fashion, Games',
    ),
    FindFriend(
      name: 'Woodrow O\'Kon',
      image: 'assets/images/man2.jpg',
      tags: 'Sports , Fashion, Games',
    ),
    FindFriend(
      name: 'Ms. Arthur Runolfsson',
      image: 'assets/images/man1.jpg',
      tags: 'Sports , Fashion, Games',
    ),
  ];

  List<FindFriend> get myList {
    return [..._myList];
  }
}
